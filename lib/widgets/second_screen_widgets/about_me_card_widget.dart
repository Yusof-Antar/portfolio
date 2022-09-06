import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AboutMeCardWidget extends StatelessWidget {
  final String svgPath;
  final String title;
  final String subTitle;
  const AboutMeCardWidget({
    required this.svgPath,
    required this.title,
    required this.subTitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 15,
        ),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Theme.of(context).colorScheme.secondary,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: SvgPicture.asset(
                svgPath,
                color: Theme.of(context).colorScheme.primary,
                height: 30,
                width: 30,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Flexible(
              child: FittedBox(
                child: Text(
                  title,
                  maxLines: 1,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Flexible(
              child: FittedBox(
                child: Text(
                  subTitle,
                  maxLines: 1,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary.withOpacity(0.8),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
