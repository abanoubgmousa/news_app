import 'package:flutter/material.dart';

PreferredSizeWidget customAppbar() {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    // Ritch text to shows more text with diffrent style
    title: RichText(
      text: const TextSpan(
        children: [
          TextSpan(
            text: "News",
            style: TextStyle(
                fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          TextSpan(
            text: "Cloud",
            style: TextStyle(
                fontSize: 25, color: Colors.amber, fontWeight: FontWeight.bold),
          )
        ],
      ),
    ),
  );
}
