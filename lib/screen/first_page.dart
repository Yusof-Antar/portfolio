import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/commons/app_responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class FirstPage extends StatelessWidget {
  final PageController pageController;
  const FirstPage({
    required this.pageController,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).colorScheme.primary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          const FittedBox(
            child: Text(
              'Hello, I\'m',
              maxLines: 1,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const FittedBox(
            child: Text(
              'Yusof Antar',
              maxLines: 1,
              style: TextStyle(
                fontSize: 70,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          FittedBox(
            child: Text(
              'Software Engineer',
              maxLines: 1,
              style: TextStyle(
                color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
                fontSize: 22,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          IntrinsicWidth(
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                            horizontal: 35,
                            vertical: 30,
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).colorScheme.primary,
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                            side: BorderSide(
                              color: Theme.of(context).colorScheme.secondary,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                      child: FittedBox(
                        child: Text(
                          'Download CV',
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        pageController.animateToPage(
                          1,
                          curve: Curves.linear,
                          duration: const Duration(
                            milliseconds: 500,
                          ),
                        );
                      },
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                          const EdgeInsets.symmetric(
                            horizontal: 35,
                            vertical: 30,
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).colorScheme.secondary,
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                      child: FittedBox(
                        child: Text(
                          'About Me',
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
          Expanded(
            flex: 12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                if (!AppResonsive.isMobile(context) && MediaQuery.of(context).size.height > 600)
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          final uri = Uri.parse('https://www.instagram.com/yusof_antar/');
                          if (await canLaunchUrl(uri)) {
                            await launchUrl(
                              uri,
                            );
                          }
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          padding: const EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: SvgPicture.asset(
                            'assets/icon/instagram-brands.svg',
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      GestureDetector(
                        onTap: () async {
                          final uri = Uri.parse('https://www.linkedin.com/in/yusof-antar-152265180/');
                          if (await canLaunchUrl(uri)) {
                            await launchUrl(
                              uri,
                            );
                          }
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          padding: const EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.secondary,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: SvgPicture.asset(
                            'assets/icon/linkedin-brands.svg',
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 85,
                        child: VerticalDivider(
                          thickness: 5,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ],
                  ),
                MediaQuery.of(context).size.height < 600 || MediaQuery.of(context).size.width < 350
                    ? const SizedBox()
                    : Container(
                        width: 300,
                        height: 400,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          gradient: LinearGradient(
                            colors: [
                              Theme.of(context).colorScheme.secondary,
                              Colors.transparent,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(180),
                          ),
                        ),
                      ),
                if (!AppResonsive.isMobile(context) && MediaQuery.of(context).size.height > 600)
                  SizedBox(
                    width: 30,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SvgPicture.asset(
                          'assets/icon/mouse-svgrepo-com.svg',
                          color: Theme.of(context).colorScheme.secondary,
                          width: 30,
                          height: 30,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          height: 100,
                          width: 30,
                          child: FittedBox(
                            child: RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                'Scroll down',
                                maxLines: 1,
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.secondary,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
