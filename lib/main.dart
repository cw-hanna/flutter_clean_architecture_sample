import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_search/core/utils/pref_util.dart';
import 'package:image_search/di/locator.dart';
import 'package:image_search/presentation/blocs/login/login_bloc.dart';

import 'package:image_search/presentation/screens/main/main_screen.dart';
import 'package:image_search/presentation/screens/my/provider/my_commit_detail_provider.dart';
import 'package:image_search/presentation/screens/my/provider/my_commit_provider.dart';
import 'package:image_search/presentation/screens/my/provider/my_org_detail_provider.dart';
import 'package:image_search/presentation/screens/my/provider/my_org_provider.dart';
import 'package:image_search/presentation/screens/search/provider/search_user_provider.dart';

import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding
      .ensureInitialized(); // runApp 메소드의 시작 지점에서 Flutter 엔진과 위젯의 바인딩이 미리 완료되어 있게만들어준다.
  initServiceLocator(); // ServiceLocator init
  PrefUtil.init(); // SharedPreference init

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<MyCommitProvider>(
          create: (_) => MyCommitProvider(),
        ),
        ChangeNotifierProvider<MyCommitDetailProvider>(
          create: (_) => MyCommitDetailProvider(),
        ),
        ChangeNotifierProvider<MyOrgProvider>(
          create: (_) => MyOrgProvider(),
        ),
        ChangeNotifierProvider<MyOrgDetailProvider>(
          create: (_) => MyOrgDetailProvider(),
        ),
        ChangeNotifierProvider<SearchUserProvider>(
          create: (_) => SearchUserProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MainScreen(),
      ),
    );
  }
}
