import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input(
      {Key? key,
      this.paHorizontal = 0.0,
      this.paVertical = 0.0,
      this.hint = ''})
      : super(key: key);

  final paHorizontal;
  final paVertical;
  final hint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: paHorizontal, vertical: paVertical),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          hintText: hint,
        ),
      ),
    );
  }
}
