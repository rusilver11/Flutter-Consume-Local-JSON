import 'package:flutter/material.dart';

class BackgroundBase extends StatelessWidget {
  const BackgroundBase({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg.png'),
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomCenter)),
      child: child,
    );
  }
}
