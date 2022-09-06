import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String first, second;
  const Header({
    required this.first,
    required this.second,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: IntrinsicHeight(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: AutoSizeText(
                first,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
                ),
              ),
            ),
            Flexible(
              child: AutoSizeText(
                second,
                maxLines: 1,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
