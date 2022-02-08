import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 88,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            iconSize: 18.0,
            color: Colors.white,
            tooltip: 'Menu',
          ),
          Expanded(
              child: Container(
                width: 10.0,
              )),
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