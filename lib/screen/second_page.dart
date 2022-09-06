import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/commons/app_responsive.dart';
import 'package:portfolio/logic/provider/color_changer.dart';
import 'package:portfolio/widgets/commons/header_widget.dart';
import 'package:provider/provider.dart';

import '../widgets/second_screen_widgets/about_me_card_widget.dart';

class SecondPage extends StatelessWidget {
  final PageController pageController;
  final String svgCode;
  const SecondPage({required this.svgCode, required this.pageController, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorChanger = Provider.of<ColorChanger>(
      context,
      listen: false,
    );
    return Container(
      color: Theme.of(context).colorScheme.primary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 50,
          ),
          const Header(
            first: 'My Intro',
            second: 'About Me',
          ),
          const SizedBox(
            height: 25,
          ),
          Expanded(
            flex: 7,
            child: SizedBox(
              width: !AppResonsive.isDesktop(context) ? double.infinity : MediaQuery.of(context).size.width * 0.5,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (AppResonsive.isDesktop(context))
                    Flexible(
                      flex: 1,
                      child: Container(
                        height: 394,
                        width: 400,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: SvgPicture.string(
                          svgCode.replaceAll('6c63ff', colorChanger.getSecondary.toRadixString(16)),
                          height: 394,
                          width: 400,
                        ),
                      ),
                    ),
                  const SizedBox(
                    width: 25,
                  ),
                  Flexible(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          flex: 2,
                          child: IntrinsicWidth(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AboutMeCardWidget(
                                  svgPath: 'assets/icon/brain-solid.svg',
                                  title: 'Experience',
                                  subTitle: '${DateTime.now().year - 2020} Years',
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const AboutMeCardWidget(
                                  svgPath: 'assets/icon/diagram-project-solid.svg',
                                  title: 'Completed',
                                  subTitle: '6+ Project',
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const AboutMeCardWidget(
                                  svgPath: 'assets/icon/laptop-code-solid.svg',
                                  title: 'Support',
                                  subTitle: '24/7 Coding',
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Flexible(
                          flex: 3,
                          child: Container(
                            width: 600,
                            height: 150,
                            padding: const EdgeInsets.symmetric(
                              vertical: 15,
                            ),
                            child: AutoSizeText(
                              'As a software engineer, I design user-friendly web and mobile application sites with working backends. I also develop solutions for challenging and intricate issues. I have several projects completed by my own hands over the course of many years of expertise, leaving clients content and satisfied.',
                              softWrap: true,
                              wrapWords: false,
                              minFontSize: 12,
                              maxFontSize: 22,
                              style: TextStyle(
                                height: 1.2,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.secondary,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: TextButton(
                            onPressed: () {
                              pageController.animateToPage(
                                4,
                                duration: const Duration(milliseconds: 1500),
                                curve: Curves.linear,
                              );
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                Theme.of(context).colorScheme.secondary,
                              ),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 25,
                                ),
                              ),
                            ),
                            child: FittedBox(
                              child: Text(
                                'Contact Me',
                                style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
