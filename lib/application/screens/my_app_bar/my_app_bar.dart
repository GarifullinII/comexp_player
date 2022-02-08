import 'package:comexp_player/application/screens/my_menu/my_menu_screen.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 88,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyMenuScreen(),
                ),
              );
            },
            icon: const Icon(Icons.menu),
            iconSize: 18.0,
            color: Colors.white,
            tooltip: 'Menu',
          ),
          Expanded(
            child: Container(
              width: 10.0,
            ),
          ),
          const Text(
            'Search by video or by name',
            style: TextStyle(
              fontFamily: 'OpenSans-Regular',
              fontWeight: FontWeight.w300,
              color: Colors.white,
              fontSize: 13.0,
            ),
          ),
          Transform.rotate(
            angle: 360,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
                size: 18.0,
              ),
              tooltip: 'Search',
            ),
          ),
        ],
      ),
    );
  }
}
