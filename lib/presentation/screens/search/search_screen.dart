import 'package:flutter/material.dart';
import 'package:image_search/config/theme/cw_colors.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
    with TickerProviderStateMixin {
  late TabController _tabController;

  final TextEditingController _uUserNameController = TextEditingController();
  final TextEditingController _rUserNameController = TextEditingController();
  final TextEditingController _cUserNameController = TextEditingController();
  final TextEditingController _cRepoNameController = TextEditingController();

  final Color _selectedColor = CwColors.color1;
  final Color _unselectedColor = CwColors.dark_gray;

  var _selectedIndex = 0;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: [
              searchUserScreen(),
              searchRepoScreen(),
              searchCommitScreen()
            ].elementAt(_selectedIndex),
          ),

          const SizedBox(
            height: 10,
          ),

          //검색 버튼
          GestureDetector(
            onTap: () {
              if (_selectedIndex == 0) {
              } else if (_selectedIndex == 1) {
              } else if (_selectedIndex == 2) {}
            },
            child: Container(
              width: 80,
              height: 40,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10.0),
                  ),
                  color: CwColors.color2),
              child: const Center(
                child: Text('검색'),
              ),
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          //검색결과화면
          Expanded(
            child: Container(
              color: Colors.grey,
              child: Center(child: Text('검색 결과화면')),
            ),
          )
        ],
      ),
    );
  }

  Widget searchUserScreen() {
    return Row(
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
    );
  }

  Widget searchCommitScreen() {
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

  Widget searchRepoScreen() {
    return Row(
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
}
