import 'package:flutter/material.dart';
import 'package:image_search/config/theme/cw_colors.dart';

class CwButtonWidget extends StatelessWidget {
  final String btnTxt;
  final Function onTap;

  const CwButtonWidget({Key? key, required this.btnTxt, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        width: 80,
        height: 40,
        margin: const EdgeInsets.only(top: 10),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
            color: CwColors.color2),
        child: Center(
          child: Text(btnTxt),
        ),
      ),
    );
  }
}
