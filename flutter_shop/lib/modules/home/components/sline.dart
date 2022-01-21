import 'package:flutter/material.dart';

class CenterPageLarge extends StatefulWidget {
  const CenterPageLarge({Key? key}) : super(key: key);
  @override
  State<CenterPageLarge> createState() => CenterPageLargeState();
}

class CenterPageLargeState extends State<CenterPageLarge> {
  Widget build(BuildContext context) {
    return Center(
      child: CarouselSlider(
          options: CarouselOptions(
            height: 130,
            autoPlay: true,
            enlargeCenterPage: true,
          ),
          items: [
            MyImageView("assets/images/bag_1.png"),
            MyImageView("assets/images/bag_1.png"),
            MyImageView("assets/images/bag_1.png"),
            MyImageView("assets/images/bag_3.jpg"),
            MyImageView('assets/images/bag_3.jpg'),
            MyImageView("assets/images/bag_2.png"),
          ]),
    );
  }

  CarouselOptions(
      {required int height,
      required bool autoPlay,
      required bool enlargeCenterPage}) {}

  CarouselSlider({options, required List<MyImageView> items}) {}
}

class MyImageView extends StatelessWidget {
  String imgPath;
  MyImageView(this.imgPath, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        child: FittedBox(
          fit: BoxFit.fill,
          child: Image.asset(imgPath),
        ));
  }
}
