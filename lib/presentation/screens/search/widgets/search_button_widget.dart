import 'package:flutter/material.dart';
import 'package:image_search/config/theme/cw_colors.dart';

class SearchButtonWidget extends StatelessWidget {
  final Function onTap;
  const SearchButtonWidget({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return //검색 버튼
        GestureDetector(
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
        child: const Center(
          child: Text('검색'),
        ),
      ),
    );
  }
}
