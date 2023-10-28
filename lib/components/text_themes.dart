import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String text1;
  const MyText({super.key, required this.text1});

  @override
  Widget build(BuildContext context) {
    return Text(
      text1,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 16,
        fontFamily: 'Gellix', // Set the font family here
      ),
    );
  }
}

class MyText2 extends StatelessWidget {
  final String text2;
  const MyText2({super.key, required this.text2});

  @override
  Widget build(BuildContext context) {
    return Text(
      text2,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 13,
        fontFamily: 'Gellix', // Set the font family here
      ),
    );
  }
}

class PostText1 extends StatelessWidget {
  final String text;
  const PostText1({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 11,
        color: Color(0xFF9397A0),
        fontFamily: 'Gellix', // Set the font family here
      ),
    );
  }
}

class PostText2 extends StatelessWidget {
  final String text;
  const PostText2({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 14,
        color: Color(0xFF19202D),
        fontFamily: 'Gellix', // Set the font family here
      ),
    );
  }
}
