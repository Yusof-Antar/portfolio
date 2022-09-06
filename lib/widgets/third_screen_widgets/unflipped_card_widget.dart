import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../logic/provider/color_changer.dart';

class UnflippedCardWidget extends StatelessWidget {
  const UnflippedCardWidget({
    Key? key,
    required this.title,
    required this.svgCode,
    required this.colorChanger,
  }) : super(key: key);

  final String title, svgCode;
  final ColorChanger colorChanger;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.4,
      width: height * 0.4,
      margin: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 10,
          ),
          FittedBox(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          Expanded(
            child: SvgPicture.string(
              svgCode.replaceAll(
                '6c63ff',
                colorChanger.getSecondary.toRadixString(16),
              ),
              height: height * 0.3,
              width: height * 0.3,
            ),
          ),
          FittedBox(
            child: Text(
              'Click to flip',
              style: TextStyle(
                fontSize: 16,
                decoration: TextDecoration.underline,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
