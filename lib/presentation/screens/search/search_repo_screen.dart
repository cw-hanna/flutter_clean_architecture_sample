import 'package:flutter/material.dart';
import 'package:image_search/config/theme/cw_colors.dart';

class SearchRepoScreen extends StatefulWidget {
  const SearchRepoScreen({Key? key}) : super(key: key);

  @override
  State<SearchRepoScreen> createState() => _SearchRepoScreenState();
}

class _SearchRepoScreenState extends State<SearchRepoScreen> {
    final TextEditingController _rUserNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Text('user name : '),
        SizedBox(
          width: 250,
          height: 50,
          child: TextFormField(
            controller: _rUserNameController,
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
    );
    
  }
}