import 'package:flutter/material.dart';
import 'package:image_search/config/theme/cw_colors.dart';
import 'package:image_search/domain/entities/org.dart';
import 'package:image_search/presentation/screens/my/provider/my_org_detail_provider.dart';
import 'package:image_search/presentation/screens/webview/base_web_view.dart';
import 'package:provider/provider.dart';

class OrgExpandWidget extends StatefulWidget {
  final Org org;

  const OrgExpandWidget({
    Key? key,
    required this.org,
  }) : super(key: key);

  @override
  State<OrgExpandWidget> createState() => _OrgExpandWidgetState();
}

class _OrgExpandWidgetState extends State<OrgExpandWidget> {
  var _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final _orgDetailProvider = context.watch<MyOrgDetailProvider>();

    return ExpansionPanelList(
      animationDuration: const Duration(milliseconds: 500),
      dividerColor: CwColors.color1,
      elevation: 0,
      children: [
        ExpansionPanel(
          backgroundColor: Colors.transparent,
          headerBuilder: (context, isExpanded) {
            return Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: CwColors.color5,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Image.network(
                        widget.org.avatar_url.toString(),
                        width: 60,
                        height: 60,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'name : ' + widget.org.login.toString(),
                            ),
                            Text('url : ' + widget.org.url.toString()),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                )
              ],
            );
          },
          body:
              _orgDetailProvider.loadingStateMap[widget.org.login]?.isLoading ==
                      true
                  ? const Center(child: CircularProgressIndicator())
                  : Column(
                      children: [
                        const Text('Repositories 목록'),
                        const SizedBox(
                          height: 10,
                        ),
                        ..._repositoriesWidget(),
                      ],
                    ),
          isExpanded: _isExpanded,
        )
      ],
      expansionCallback: (panelIndex, expanded) {
        _orgDetailProvider.fetch(widget.org.login);

        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
    );
  }

  //organization하위 repositories목록을 Map에서 꺼내옴.
  List<Widget> _repositoriesWidget() {
    final _orgDetailProvider = context.watch<MyOrgDetailProvider>();
    var widgetList = <Widget>[];

    if (_orgDetailProvider.orgMap[widget.org.login] != null) {
      for (var i = 0;
          i < _orgDetailProvider.orgMap[widget.org.login]!.length;
          i++) {
        widgetList.add(Column(
          children: [
            InkWell(
              onTap: () {
                //repository html 웹뷰 이동
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BaseWebView(
                              htmlString: _orgDetailProvider
                                  .orgMap[widget.org.login]!
                                  .elementAt(i)
                                  .html_url,
                            )));
              },
              child: Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.fromLTRB(20, 3, 20, 3),
                child: Text(_orgDetailProvider.orgMap[widget.org.login]!
                    .elementAt(i)
                    .name
                    .toString()),
              ),
            ),
            const Divider(
              thickness: 1,
              color: CwColors.color1,
            )
          ],
        ));
      }
    }
    return widgetList;
  }
}
