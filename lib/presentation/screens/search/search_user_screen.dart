import 'package:flutter/material.dart';
import 'package:image_search/config/theme/cw_colors.dart';
import 'package:image_search/core/utils/string_util.dart';
import 'package:image_search/presentation/screens/common/cw_button_widget.dart';
import 'package:image_search/presentation/screens/search/provider/search_user_provider.dart';
import 'package:image_search/presentation/screens/search/widgets/search_user_bottom_sheet.dart';
import 'package:provider/provider.dart';

class SearchUserScreen extends StatefulWidget {
  const SearchUserScreen({Key? key}) : super(key: key);

  @override
  State<SearchUserScreen> createState() => _SearchUserScreenState();
}

class _SearchUserScreenState extends State<SearchUserScreen> {
  final TextEditingController _uUserNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var _searchUserProvider = context.watch<SearchUserProvider>();

    return Column(
      children: [
        //사용자명 입력창
        Row(
          children: [
            const Text('user name : '),
            SizedBox(
              width: 250,
              height: 50,
              child: TextFormField(
                controller: _uUserNameController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  hintText: 'User',
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color: CwColors.darkGray,
                  ),
                  filled: true,
                  fillColor: CwColors.gray,
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
        //검색버튼
        CwButtonWidget(
            btnTxt: '검색',
            onTap: () {
              if (StringUtil.isValidString(_uUserNameController.text)) {
                _searchUserProvider.fetch(_uUserNameController.text);

                if (_searchUserProvider.searchUserModel != null) {
                  showModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (context) {
                        return const SearchUserBottomSheet();
                      });
                }
              }
            })
      ],
    );
  }
}
