import 'package:flutter/material.dart';

class MyAppMenu extends StatefulWidget {
  const MyAppMenu({Key? key}) : super(key: key);

  @override
  _MyAppMenuState createState() => _MyAppMenuState();
}

class _MyAppMenuState extends State<MyAppMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: SizedBox(
        height: 88,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.close,
                size: 24,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            const Text(
              'Menu',
              style: TextStyle(
                fontFamily: 'OpenSans-Regular',
                fontWeight: FontWeight.w300,
                color: Colors.white,
                fontSize: 13.0,
              ),
            ),
            Expanded(
              child: Container(
                width: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
