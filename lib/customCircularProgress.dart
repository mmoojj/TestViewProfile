import 'package:flutter/material.dart';

class CustomCircularProgressIndicator extends ProgressIndicator {
  @override
  State<StatefulWidget> createState() => CustomCircularProgressIndicatorState();
}

class CustomCircularProgressIndicatorState
    extends State<CustomCircularProgressIndicator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      color: Colors.black,
    );
  }
}
