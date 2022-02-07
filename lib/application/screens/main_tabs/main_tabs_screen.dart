import 'package:comexp_player/application/screens/my_app_bar/my_app_bar.dart';
import 'package:comexp_player/application/screens/my_button/my_button.dart';
import 'package:comexp_player/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MainTabsScreen extends StatelessWidget {
  const MainTabsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          MyAppBar(),
          MovieListWidget(),
        ],
      ),
    );
  }
}

class MovieListWidget extends StatelessWidget {
  const MovieListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: SingleChildScrollView(
        child: StaggeredGrid.count(
          mainAxisSpacing: 35,
          crossAxisSpacing: 5,
          crossAxisCount: 2,
          children: const [
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: MyWidgetCardFirst(),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: MyWidgetCardSecond(),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1.4,
              child: MyWidgetCardThird(),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1.8,
              child: MyWidgetCardFourth(),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: MyWidgetCardFifth(),
            ),
          ],
        ),
      ),
    );
  }
}

class MyWidgetCardFirst extends StatelessWidget {
  const MyWidgetCardFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Game of thrones best moments',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'OpenSans-Regular',
            fontWeight: FontWeight.w600,
            fontSize: 14.0,
          ),
        ),
        const SizedBox(
          height: 9,
        ),
        Stack(
          clipBehavior: Clip.none,
          children: <Widget>[
            const Positioned(
              top: 20,
              left: 9,
              child: MyGrayWidgetNext(),
            ),
            const Positioned(
              top: 12,
              left: 5,
              child: MyGrayWidget(),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Image.asset(
                'assets/images/image_game.jpeg',
              ),
            ),
            const Positioned(
              bottom: 6,
              left: 6,
              child: Text(
                '5 m 30s',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'OpenSans-Regular',
                  fontWeight: FontWeight.w400,
                  fontSize: 13.0,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Expanded(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: const <Widget>[
              MyButton(
                imageName: Images.video,
              ),
              SizedBox(
                width: 4.5,
              ),
              Text(
                '11',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MyWidgetCardSecond extends StatelessWidget {
  const MyWidgetCardSecond({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Game of thrones best moments',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'OpenSans-Regular',
            fontWeight: FontWeight.w600,
            fontSize: 14.0,
          ),
        ),
        const SizedBox(
          height: 9,
        ),
        Stack(
          clipBehavior: Clip.none,
          children: <Widget>[
            const Positioned(
              top: 20,
              left: 9,
              child: MyGrayWidgetNext(),
            ),
            const Positioned(
              top: 12,
              left: 5,
              child: MyGrayWidget(),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Image.asset(
                'assets/images/image_game.jpeg',
              ),
            ),
            const Positioned(
              bottom: 6,
              left: 6,
              child: Text(
                '5 m 30s',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'OpenSans-Regular',
                  fontWeight: FontWeight.w400,
                  fontSize: 13.0,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Expanded(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: const <Widget>[
              MyButton(
                imageName: Images.layers,
              ),
              SizedBox(
                width: 4.5,
              ),
              Text(
                '2',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                width: 20,
              ),
              MyButton(
                imageName: Images.video,
              ),
              SizedBox(
                width: 4.5,
              ),
              Text(
                '11',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MyWidgetCardThird extends StatelessWidget {
  const MyWidgetCardThird({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'челябинский метеорит',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'OpenSans-Regular',
            fontWeight: FontWeight.w600,
            fontSize: 14.0,
          ),
        ),
        const SizedBox(
          height: 9,
        ),
        Stack(
          clipBehavior: Clip.none,
          children: <Widget>[
            const Positioned(
              top: 26,
              left: 13,
              child: MyGrayWidgetNextThird(),
            ),
            const Positioned(
              top: 13,
              left: 5,
              child: MyGrayWidgetThird(),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Image.asset(
                'assets/images/image_meteorite.jpeg',
              ),
            ),
            Positioned(
              bottom: 14,
              left: 17,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: const <Widget>[
                  MyButton(
                    imageName: Images.layers,
                  ),
                  SizedBox(
                    width: 4.5,
                  ),
                  Text(
                    '2',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans-Regular',
                      fontWeight: FontWeight.w400,
                      fontSize: 12.0,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  MyButton(
                    imageName: Images.video,
                  ),
                  SizedBox(
                    width: 4.5,
                  ),
                  Text(
                    '11',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans-Regular',
                      fontWeight: FontWeight.w400,
                      fontSize: 12.0,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  MyButton(
                    imageName: Images.book,
                  ),
                  SizedBox(
                    width: 4.5,
                  ),
                  Text(
                    '1',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans-Regular',
                      fontWeight: FontWeight.w400,
                      fontSize: 12.0,
                    ),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  MyButton(
                    imageName: Images.clock,
                  ),
                  SizedBox(
                    width: 4.5,
                  ),
                  Text(
                    '1m 30s',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans-Regular',
                      fontWeight: FontWeight.w400,
                      fontSize: 13.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

      ],
    );
  }
}

class MyWidgetCardFourth extends StatelessWidget {
  const MyWidgetCardFourth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'best sword fighting compilation',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'OpenSans-Regular',
            fontWeight: FontWeight.w600,
            fontSize: 14.0,
          ),
        ),
        const SizedBox(
          height: 9,
        ),
        Stack(
          clipBehavior: Clip.none,
          children: <Widget>[
            const Positioned(
              top: 162,
              left: 9,
              child: MyGrayWidgetNext(),
            ),
            const Positioned(
              top: 154,
              left: 5,
              child: MyGrayWidget(),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Image.asset(
                'assets/images/image_city.jpeg',
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Expanded(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: const <Widget>[
              Text(
                '5 m 30s',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'OpenSans-Regular',
                  fontWeight: FontWeight.w400,
                  fontSize: 13.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class MyWidgetCardFifth extends StatelessWidget {
  const MyWidgetCardFifth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Game of thrones best moments',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'OpenSans-Regular',
            fontWeight: FontWeight.w600,
            fontSize: 14.0,
          ),
        ),
        const SizedBox(
          height: 9,
        ),
        Stack(
          clipBehavior: Clip.none,
          children: <Widget>[
            const Positioned(
              top: 20,
              left: 9,
              child: MyGrayWidgetNext(),
            ),
            const Positioned(
              top: 12,
              left: 5,
              child: MyGrayWidget(),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Image.asset(
                'assets/images/image_game.jpeg',
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Expanded(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: const <Widget>[
              Text(
                '5 m 30s',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'OpenSans-Regular',
                  fontWeight: FontWeight.w400,
                  fontSize: 13.0,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}




class MyGrayWidget extends StatelessWidget {
  const MyGrayWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: Container(
        width: 150,
        height: 83,
        color: const Color(0xFF45474F),
      ),
    );
  }
}

class MyGrayWidgetNext extends StatelessWidget {
  const MyGrayWidgetNext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: Container(
        width: 142,
        height: 78,
        color: const Color(0xFF333439),
      ),
    );
  }
}

class MyGrayWidgetThird extends StatelessWidget {
  const MyGrayWidgetThird({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: Container(
        width: 324,
        height: 182,
        color: const Color(0xFF45474F),
      ),
    );
  }
}

class MyGrayWidgetNextThird extends StatelessWidget {
  const MyGrayWidgetNextThird({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: Container(
        width: 308,
        height: 173,
        color: const Color(0xFF333439),
      ),
    );
  }
}