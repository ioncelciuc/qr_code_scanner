import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  ButtonWidget({
    this.text,
    this.onPressed,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RaisedButton(
        child: Text(
          text,
          style: TextStyle(fontSize: 24),
        ),
        onPressed: onPressed,
        shape: StadiumBorder(),
        color: Colors.blue[800],
        padding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        textColor: Colors.white,
      ),
    );
  }
}
