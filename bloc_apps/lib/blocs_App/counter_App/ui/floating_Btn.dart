import 'package:flutter/material.dart';

class FloatingBtn extends StatelessWidget {
  final Function()? onPressed;
  final IconData icon;

  const FloatingBtn({Key? key, required this.icon, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: Icon(icon,size:50,),
    );
  }
}
