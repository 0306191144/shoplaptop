import "package:flutter/material.dart";

// ignore: must_be_immutable
class MyButtonWidget extends StatelessWidget {
  final double width;
  final EdgeInsets padding;
  final String text;
  final Function onPress;
  final Color color;
  final TextStyle textStyle;
  final bool isSocial;
  // ignore: prefer_typing_uninitialized_variables
  var icon;
  MyButtonWidget({
    Key? key,
    this.width = double.infinity,
    required this.text,
    required this.onPress,
    required this.color,
    this.isSocial = false,
    this.icon = "",
    this.textStyle = const TextStyle(fontSize: 16.0),
    required this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: padding,
        width: width,
        child: MaterialButton(
          height: 57,
          elevation: 0,
          color: color,
          shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: isSocial
                  ? const BorderSide(
                      color: Color.fromRGBO(235, 240, 255, 1), width: 2.0)
                  : BorderSide.none),
          onPressed: () {
            onPress();
          },
          child: Row(children: [
            isSocial ? icon : const Text(""),
            Expanded(
                child:
                    Text(text, textAlign: TextAlign.center, style: textStyle))
          ]),
        ));
  }
}
