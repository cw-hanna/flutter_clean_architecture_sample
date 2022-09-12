import 'package:flutter/material.dart';

class CommitDetailScreen extends StatelessWidget {
  const CommitDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const BackButton(
          color: Colors.black,
        ),
        title: const Text(
          '디테일화면',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: const Center(
          child: Text('디테일 화면'),
        ),
      ),
    );
  }
}
