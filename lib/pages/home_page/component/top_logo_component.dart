import 'package:flutter/material.dart';

class TopLogoComponent extends StatelessWidget {
  const TopLogoComponent({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.only(top: 25, bottom: 30),
      alignment: Alignment.center,
      child: Image.asset(
        "assets/image/KonserKlik.png",
        width: width * 0.45,
      ),
    );
  }
}
