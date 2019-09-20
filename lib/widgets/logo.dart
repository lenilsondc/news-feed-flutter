import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('World', style: TextStyle(fontFamily: 'Times New Roman')),
        Icon(
          Icons.language,
          color: Colors.indigoAccent,
        ),
        Text('News'),
      ],
    );
  }
}
