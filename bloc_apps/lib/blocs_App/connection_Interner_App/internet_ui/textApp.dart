import 'package:flutter/material.dart';

class TextApp extends StatelessWidget {
  final String text;
  const TextApp({Key? key,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,style: Theme.of(context).textTheme.headline5!.copyWith(
      color: Colors.white
    ),);
  }
}
