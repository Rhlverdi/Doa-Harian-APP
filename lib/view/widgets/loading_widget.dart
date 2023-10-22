import 'package:flutter/material.dart';

Widget loadingWidget() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/gif/loading.gif',
          height: 90,
        ),
        const Text(
          'Loading...',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ],
    ),
  );
}
