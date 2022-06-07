import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    this.text = 'Button',
    this.onPressed,
    this.color = Colors.blue,
    this.isLoading = false,
  }) : super(key: key);

  final String text;
  final onPressed;
  final Color color;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(50.0),
        primary: color,
      ),
      icon: isLoading
          ? Container(
              width: 24,
              height: 24,
              padding: const EdgeInsets.all(2.0),
              child: const CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 3,
              ),
            )
          : Container(),
      onPressed: onPressed,
      label: Text(
        style: const TextStyle(
          fontSize: 16.0,
          fontFamily: 'Lato-Bold',
        ),
        isLoading ? '' : text,
      ),
    );
  }
}
