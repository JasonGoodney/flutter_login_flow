import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton(
      {Key key,
      this.text,
      this.textColor,
      this.backgroundColor,
      this.onPressed})
      : super(key: key);

  final String text;
  final Color textColor;
  final Color backgroundColor;
  @required
  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: RaisedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: textColor),
        ),
        color: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
