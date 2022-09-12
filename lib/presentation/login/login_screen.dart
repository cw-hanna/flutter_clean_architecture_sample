import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_search/presentation/theme/cw_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController idController = TextEditingController();
  final TextEditingController pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
          color: Colors.white,
          child: Column(
            children: [
              TextFormField(
                controller: idController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  hintText: 'ID',
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: CwColors.dark_gray,
                  ),
                  filled: true,
                  fillColor: CwColors.gray,
                  border: InputBorder.none,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: idController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                    hintText: 'PA',
                    hintStyle: TextStyle(
                      fontSize: 20,
                      color: CwColors.dark_gray,
                    ),
                    filled: true,
                    fillColor: CwColors.gray,
                    border: InputBorder.none),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      color: CwColors.color2),
                  child: const Center(
                    child: Text('로그인'),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
