import 'package:flutter/material.dart';

class CustomCircularProgressIndicator extends StatelessWidget {
  const CustomCircularProgressIndicator({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: LinearProgressIndicator(
        backgroundColor: Colors.transparent,
        borderRadius: BorderRadiusDirectional.horizontal(
            end: Radius.circular(30), start: Radius.circular(30)),
        color: Colors.black,
        minHeight: 10,
      ),
    );
  }
}
