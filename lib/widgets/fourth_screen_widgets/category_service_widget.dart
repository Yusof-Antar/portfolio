import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../logic/provider/color_changer.dart';

class CategoryService extends StatelessWidget {
  const CategoryService({
    Key? key,
    required this.title,
    required this.mobileAppSvgCode,
    required this.colorChanger,
  }) : super(key: key);

  final String mobileAppSvgCode, title;
  final ColorChanger colorChanger;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(25),
      ),
      height: height * 0.25,
      width: height * 0.2,
      child: Stack(
        fit: StackFit.loose,
        children: [
          SvgPicture.string(
            mobileAppSvgCode.replaceAll(
              '6c63ff',
              colorChanger.getSecondary.toRadixString(16),
            ),
          ),
          Positioned(
            top: 10,
            left: 15,
            right: 15,
            child: FittedBox(
              child: Text(
                title,
                maxLines: 2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 5,
            left: 20,
            right: 20,
            child: Text(
              'More Info',
              maxLines: 1,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
