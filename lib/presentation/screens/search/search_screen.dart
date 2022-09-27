import 'package:flutter/material.dart';
import 'package:image_search/config/theme/cw_colors.dart';
import 'package:image_search/presentation/screens/search/search_commit_screen.dart';
import 'package:image_search/presentation/screens/search/search_repo_screen.dart';
import 'package:image_search/presentation/screens/search/search_user_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  final Color _selectedColor = CwColors.color1;
  final Color _unselectedColor = CwColors.darkGray;

  var _selectedIndex = 0;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, 
      body: Column(
        children: [
          //TabBar
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: CwColors.gray),
              child: TabBar(
                controller: _tabController,
                indicator: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                onTap: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });
                },
                tabs: [
                  tabButton('user', 0),
                  tabButton('repo', 1),
                  tabButton('commit', 2),
                ],
              ),
            ),
          ),

          //검색조건 화면
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: [
              const SearchUserScreen(),
              const SearchRepoScreen(),
              const SearchCommitScreen(),
            ].elementAt(_selectedIndex),
          ),

          _divider(),

          _divider(),
        ],
      ),
    );
  }

  Widget tabButton(String buttonTxt, int buttonIndex) {
    return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
        padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
        child: Text(
          buttonTxt,
          style: TextStyle(
              color: _selectedIndex == buttonIndex
                  ? _selectedColor
                  : _unselectedColor),
        ));
  }

  Widget _divider() {
    return const SizedBox(
      height: 10,
    );
  }
}
