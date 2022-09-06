import 'package:auto_size_text/auto_size_text.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/logic/provider/color_changer.dart';
import 'package:portfolio/widgets/commons/header_widget.dart';
import 'package:provider/provider.dart';

import '../commons/app_responsive.dart';
import '../widgets/third_screen_widgets/certificate_card_widget.dart';
import '../widgets/third_screen_widgets/flipped_card_widget.dart';
import '../widgets/third_screen_widgets/unflipped_card_widget.dart';

class ThirdPage extends StatelessWidget {
  final String frameworkSvgCode;
  final String languagesSvgCode;
  final String skillsSvgCode;
  const ThirdPage({
    required this.frameworkSvgCode,
    required this.languagesSvgCode,
    required this.skillsSvgCode,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map> frameworkData = [
      {
        'title': 'Flutter',
        'level': 'Advanced',
      },
      {
        'title': 'Flask',
        'level': 'Basic',
      },
      {
        'title': 'Laravel',
        'level': 'Intermediate',
      },
      {
        'title': 'React',
        'level': 'Basic',
      },
      {
        'title': 'Django',
        'level': 'Beginner',
      },
    ];
    final List<Map> languagesData = [
      {
        'title': 'Dart',
        'level': 'Advanced',
      },
      {
        'title': 'HTML',
        'level': 'Beginner',
      },
      {
        'title': 'PHP',
        'level': 'Intermediate',
      },
      {
        'title': 'CSS',
        'level': 'Basic',
      },
      {
        'title': 'Python',
        'level': 'Beginner',
      },
      {
        'title': 'Java Script',
        'level': 'Basic',
      },
      {
        'title': 'Arduino',
        'level': 'Beginner',
      },
    ];
    final List<Map> skillsData = [
      {
        'title': 'Problem Solving',
        'level': '',
      },
      {
        'title': 'Critical Thinking',
        'level': '',
      },
      {
        'title': 'Communication',
        'level': '',
      },
      {
        'title': 'Self-Learning',
        'level': '',
      },
    ];

    final List<Map> certificateData = [
      {
        'title': 'Flutter Festival (GDG)',
        'description': 'Google Certificate to build a full functioning mobile application using Flutter framework.',
      },
      {
        'title': 'Certificate of IWD',
        'description': 'Google Certificate where we spoke to women in technologies and share our experiences together.',
      },
      {
        'title': 'Arduino Out Reach Program',
        'description': 'Weekly Program to Learn Arduino with University Professors, where we made robots and machines.',
      },
    ];

    final ScrollController rowScrollController = ScrollController();

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
            first: 'My Skills',
            second: 'My Knowledge',
          ),
          const SizedBox(
            height: 25,
          ),
          Expanded(
            flex: 7,
            child: Column(
              children: [
                Flexible(
                  flex: 5,
                  child: SizedBox(
                    width: AppResonsive.isMobile(context) ? double.infinity : MediaQuery.of(context).size.height * 1.2 + 90,
                    child: SingleChildScrollView(
                      controller: rowScrollController,
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          FlipCard(
                            front: UnflippedCardWidget(
                              title: 'Frameworks',
                              svgCode: frameworkSvgCode,
                              colorChanger: colorChanger,
                            ),
                            back: FlippedCardWidget(
                              title: 'Frameworks',
                              crossCount: 2,
                              data: frameworkData,
                            ),
                          ),
                          FlipCard(
                            front: UnflippedCardWidget(
                              title: 'Languages',
                              svgCode: languagesSvgCode,
                              colorChanger: colorChanger,
                            ),
                            back: FlippedCardWidget(
                              title: 'Languages',
                              crossCount: 2,
                              data: languagesData,
                            ),
                          ),
                          FlipCard(
                            front: UnflippedCardWidget(
                              title: 'Skills',
                              svgCode: skillsSvgCode,
                              colorChanger: colorChanger,
                            ),
                            back: FlippedCardWidget(
                              title: 'Skills',
                              crossCount: 1,
                              data: skillsData,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Flexible(
                  flex: 1,
                  child: AutoSizeText(
                    'Certificates',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: SizedBox(
                    width: AppResonsive.isMobile(context) ? double.infinity : MediaQuery.of(context).size.height * 1.2 + 90,
                    child: SingleChildScrollView(
                      controller: rowScrollController,
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: certificateData
                            .map(
                              (certificate) => CertificateCardWidget(
                                title: certificate['title'],
                                description: certificate['description'],
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ),
                ),
              ],
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
