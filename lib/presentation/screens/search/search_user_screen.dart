import 'package:flutter/material.dart';
import 'package:image_search/config/theme/cw_colors.dart';
import 'package:image_search/presentation/screens/search/widgets/search_button_widget.dart';

class SearchUserScreen extends StatefulWidget {
  const SearchUserScreen({Key? key}) : super(key: key);

  @override
  State<SearchUserScreen> createState() => _SearchUserScreenState();
}

class _SearchUserScreenState extends State<SearchUserScreen> {
  final TextEditingController _uUserNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
                    color: CwColors.dark_gray,
                  ),
                  filled: true,
                  fillColor: CwColors.gray,
                  border: InputBorder.none,
                ),
              ),
            ),
          ],
        ),
        
        SearchButtonWidget(onTap: () {}),
      ],
    );
  }
}
