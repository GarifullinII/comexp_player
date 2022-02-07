import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String imageName;
  const MyButton({
    Key? key,
    required this.imageName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        height: 24,
        width: 24,
        child: Image.asset(
          imageName,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}