import 'package:flutter/material.dart';
import 'package:image_search/data/data_source/pixabay_api.dart';
import 'package:image_search/data/repository/photo_api_repository_impl_api.dart';
import 'package:image_search/di/provider_setup.dart';
import 'package:image_search/domain/model/photo.dart';
import 'package:image_search/domain/usecase/get_photos_use_case.dart';
import 'package:image_search/presentation/home/home_screen.dart';
import 'package:image_search/presentation/home/home_view_model.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(
    MultiProvider(
      providers: globalProviders,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
