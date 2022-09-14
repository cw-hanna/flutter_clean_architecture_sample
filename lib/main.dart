import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_search/di/locator.dart';
import 'package:image_search/presentation/bloc/login/login_bloc.dart';
import 'package:image_search/presentation/commit/commit_provider.dart';
import 'package:image_search/presentation/main/main_screen.dart';
import 'package:provider/provider.dart';

void main() {
  initServiceLocator();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<CommitProvider>(
          create: (_) => CommitProvider(),
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
