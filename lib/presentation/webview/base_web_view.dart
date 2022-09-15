import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class BaseWebView extends StatefulWidget {
  final String? htmlString;

  const BaseWebView({
    this.htmlString,
  });

  @override
  _BaseWebViewState createState() => _BaseWebViewState();
}

class _BaseWebViewState extends State<BaseWebView>
    implements WidgetsBindingObserver {
  InAppWebViewController? webViewController;

  /// 로딩 Progress (0 to 1)
  PageLoadingStatus progress = PageLoadingStatus.PREPARED;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addObserver(this);

    //widget.args로 Map형태로 들어온 값을 이용해 웹뷰속성 세팅 가능
    //ex. widget.args['canHideTab']

    // debug webview
    //AndroidInAppWebViewController.setWebContentsDebuggingEnabled(true);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      //하드웨어 백키 눌렀을 때
      onWillPop: () {
        if (webViewController != null) {
          webViewController!.canGoBack().then((value) =>
              //추후 historyBack

              Navigator.of(context).pop());
        }
        return Future(() => false); //위에서 어떻게 할지 정하기 때문에 여기서 뭘 더 하지는 않는다.
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Container(
            width: 20,
            height: 20,
            alignment: Alignment.center,
            child: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ),
        body: SafeArea(
          bottom: true,
          child: Stack(
            children: <Widget>[
              InAppWebView(
                  initialUrlRequest: URLRequest(
                      url: Uri.parse(
                          'https://github.com/gkssk925/flutter_inappwebview/commit/fc3db2002ef5d90ee5b54b99b5a75ee8400f0318')),
                  // initialData: InAppWebViewInitialData(
                  //   data:
                  //       'https://github.com/gkssk925/flutter_inappwebview/commit/fc3db2002ef5d90ee5b54b99b5a75ee8400f0318',
                  //   //data: widget.htmlString!,
                  // ),
                  initialOptions: InAppWebViewGroupOptions(
                      crossPlatform: InAppWebViewOptions(
                        useShouldOverrideUrlLoading: true,
                        mediaPlaybackRequiresUserGesture: false,
                        javaScriptCanOpenWindowsAutomatically: true,
                        cacheEnabled: false,
                      ),
                      android: AndroidInAppWebViewOptions(
                        mixedContentMode:
                            AndroidMixedContentMode.MIXED_CONTENT_ALWAYS_ALLOW,
                        cacheMode: AndroidCacheMode.LOAD_NO_CACHE,
                        loadWithOverviewMode: true,
                        layoutAlgorithm: AndroidLayoutAlgorithm.NORMAL,
                      ),
                      ios: IOSInAppWebViewOptions(
                        allowsInlineMediaPlayback: true,
                      )),
                  onWebViewCreated: (controller) {
                    webViewController = controller;

                    controller.addJavaScriptHandler(
                        handlerName: 'JS_INTERFACE_NAME',
                        callback: (args) async {
                          var actKey = '';
                          if (args.isNotEmpty && args[0].isNotEmpty) {
                            actKey = args[0]['actKey'];
                            dynamic data = args[0];

                            //Javascript Handler별도 생성후 처리
                          }
                        });
                  },
                  onProgressChanged: (controller, progressPercent) {
                    if (progressPercent < 70) {
                      if (progress != PageLoadingStatus.PREPARED) {
                        setState(() {
                          progress = PageLoadingStatus.PREPARED;
                        });
                      }
                    } else {
                      if (progress != PageLoadingStatus.COMPLETED) {
                        setState(() {
                          progress = PageLoadingStatus.COMPLETED;
                        });
                      }
                    }
                  },
                  shouldOverrideUrlLoading:
                      (controller, navigationAction) async {
                    var uri = navigationAction.request.url!;

                    var currentUrl = await controller.getUrl();
                    return NavigationActionPolicy.ALLOW;

                    //uri scheme처리
                    //uri 특정 주소일때 처리
                  },
                  onJsAlert: (controller, JsAlertRequest onJsAlert) async {
                    //javascript window.alert
                    //다이얼로그 띄움
                  },
                  onJsConfirm:
                      (controller, JsConfirmRequest jsConfirmRequest) async {
                    //javascript window.confirm
                    //다이얼로그 띄움
                  },
                  onLoadStart: (controller, url) async {
                    setState(() {
                      progress = PageLoadingStatus.STARTED;
                    });
                  },
                  onLoadStop: (controller, url) async {},
                  onReceivedServerTrustAuthRequest:
                      (InAppWebViewController controller,
                          URLAuthenticationChallenge challenge) async {
                    return ServerTrustAuthResponse(
                        action: ServerTrustAuthResponseAction.PROCEED);
                  },
                  androidOnPermissionRequest: // 웹에서 퍼미션 요청이 왔을 때에
                      (InAppWebViewController controller, String origin,
                          List<String> resources) async {
                    for (var resource in resources) {
                      // ex. 캡쳐일때에 카메라 펴미션 요청
                      if (resource.contains('VIDEO_CAPTURE')) {}
                    }
                  }),
              progress == PageLoadingStatus.PREPARED
                  ? const Align(
                      alignment: Alignment.center,
                      child: CircularProgressIndicator(),
                    )
                  : const SizedBox()
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  void onResume() {}

  void onPause() {}

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      onPause();
    } else if (state == AppLifecycleState.resumed) {
      onResume();
    }
  }

  @override
  void didChangeAccessibilityFeatures() {}

  @override
  void didChangeLocales(List<Locale>? locales) {}

  @override
  void didChangeMetrics() {}

  @override
  void didChangePlatformBrightness() {}

  @override
  void didChangeTextScaleFactor() {}

  @override
  void didHaveMemoryPressure() {}

  @override
  Future<bool> didPopRoute() {
    return Future.value(false);
  }

  @override
  Future<bool> didPushRoute(String route) {
    return Future.value(false);
  }

  @override
  Future<bool> didPushRouteInformation(RouteInformation routeInformation) {
    return Future.value(false);
  }
}

enum PageLoadingStatus {
  PREPARED, // 서버 통신 중 (loading 를 보여 주어야 하는 상태)
  STARTED, // Browser 에 Rendering 시작
  COMPLETED, // 최종 로딩 완료
}
