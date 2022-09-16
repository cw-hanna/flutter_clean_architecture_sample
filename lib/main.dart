import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_search/di/locator.dart';
import 'package:image_search/presentation/blocs/login/login_bloc.dart';
import 'package:image_search/presentation/screens/commit/provider/commit_detail_provider.dart';
import 'package:image_search/presentation/screens/commit/provider/commit_search_provider.dart';
import 'package:image_search/presentation/screens/main/main_screen.dart';

import 'package:provider/provider.dart';

void main() {
  initServiceLocator();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<CommitSearchProvider>(
          create: (_) => CommitSearchProvider(),
        ),
        ChangeNotifierProvider<CommitDetailProvider>(
          create: (_) => CommitDetailProvider(),
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
