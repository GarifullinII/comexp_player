import 'package:comexp_player/application/screens/my_app_meny/my_app_menu.dart';
import 'package:comexp_player/application/screens/my_button/my_button.dart';
import 'package:comexp_player/resources/resources.dart';
import 'package:flutter/material.dart';

class MyMenuScreen extends StatelessWidget {
  const MyMenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          MyAppMenu(),
          MenuListWidget(),
        ],
      ),
    );
  }
}

class MenuListWidget extends StatefulWidget {
  const MenuListWidget({Key? key}) : super(key: key);

  @override
  _MenuListWidgetState createState() => _MenuListWidgetState();
}

class _MenuListWidgetState extends State<MenuListWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Language',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans-Regular',
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const _TabsNonScrollable(),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Mainpage',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans-Regular',
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Search',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans-Regular',
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Technology',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans-Regular',
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'FAQ',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans-Regular',
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Uploaded videos',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'OpenSans-Regular',
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
            ),
          ),
          const SizedBox(
            height: 340,
          ),
          Row(
            children: const [
              MyButton(
                imageName: Images.facebook,
              ),
              SizedBox(
                width: 10,
              ),
              MyButton(
                imageName: Images.instagram,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _TabsNonScrollable extends StatefulWidget {
  const _TabsNonScrollable({Key? key}) : super(key: key);

  @override
  _TabsNonScrollableState createState() => _TabsNonScrollableState();
}

class _TabsNonScrollableState extends State<_TabsNonScrollable>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: TabBar(
        controller: _tabController,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorWeight: 1,
        indicatorColor: Colors.white,
        isScrollable: true,
        labelStyle: const TextStyle(
          color: Colors.white,
          fontFamily: 'OpenSans-Regular',
          fontWeight: FontWeight.w400,
          fontSize: 14.0,
        ),
        labelPadding: EdgeInsets.zero,
        tabs: const [
          Tab(
            child: Text(
              'English',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'OpenSans-Regular',
                fontWeight: FontWeight.w400,
                fontSize: 14.0,
              ),
            ),
          ),
          Tab(
            child: Text(
              'Russian',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'OpenSans-Regular',
                fontWeight: FontWeight.w400,
                fontSize: 14.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Row(
// children: const [
// Text(
// 'English',
// style: TextStyle(
// color: Colors.white,
// fontFamily: 'OpenSans-Regular',
// fontWeight: FontWeight.w400,
// fontSize: 14.0,
// ),
// ),
// SizedBox(
// width: 18,
// ),
// Text(
// 'Russian',
// style: TextStyle(
// color: Colors.white,
// fontFamily: 'OpenSans-Regular',
// fontWeight: FontWeight.w400,
// fontSize: 14.0,
// ),
// ),
// ],
// ),
