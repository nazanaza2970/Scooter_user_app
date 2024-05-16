import 'package:flutter/material.dart';

class Safety extends StatelessWidget {
  const Safety({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Safety video"),
          SizedBox(
            height: 30,
          ),
          Text("Instructions")
        ],
      ),
    );
  }
}