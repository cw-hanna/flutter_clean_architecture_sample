import 'package:flutter/material.dart';
import 'package:image_search/config/theme/cw_colors.dart';

class SearchCommitScreen extends StatefulWidget {
  const SearchCommitScreen({Key? key}) : super(key: key);

  @override
  State<SearchCommitScreen> createState() => _SearchCommitScreenState();
}

class _SearchCommitScreenState extends State<SearchCommitScreen> {
  final TextEditingController _cUserNameController = TextEditingController();
  final TextEditingController _cRepoNameController = TextEditingController();

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
                controller: _cUserNameController,
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
        Row(
          children: [
            const Text('repo name : '),
            SizedBox(
              width: 250,
              height: 50,
              child: TextFormField(
                controller: _cRepoNameController,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                  hintText: 'Repo',
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
        )
      ],
    );
  }
}
