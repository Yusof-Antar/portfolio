import 'package:flutter/material.dart';
import 'package:portfolio/commons/app_responsive.dart';
import 'package:portfolio/widgets/commons/header_widget.dart';

import '../widgets/fourth_screen_widgets/experience_card_widget.dart';
import '../widgets/fourth_screen_widgets/service_card_widget.dart';

class FourthPage extends StatelessWidget {
  final String mobileAppSvgCode;
  final String websiteSvgCode;
  const FourthPage({
    required this.mobileAppSvgCode,
    required this.websiteSvgCode,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScrollController rowScrollController = ScrollController();

    final Map mobileApplicationServices = {
      'title': 'Mobile Application',
      'description': 'Creating Mobile Application with Flutter Framework. \nI have 2 years of experience in this fields.',
      'services': [
        'I design user-friendly interface',
        'I create fully funtioning application',
        'I create backend for the application',
        'Manage Your Application till the end',
      ],
    };

    final List mobileExperience = [
      {
        'title': 'Duckanji',
        'image': 'https://images.unsplash.com/photo-1551650992-ee4fd47df41f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bW9iaWxlJTIwYXBwbGljYXRpb258ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
      },
      {
        'title': 'Hitos',
        'image':
            'https://images.unsplash.com/photo-1596558450255-7c0b7be9d56a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fG1vYmlsZSUyMGFwcGxpY2F0aW9ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
      },
    ];

    final Map webApplicationServices = {
      'title': 'Web Application',
      'description': 'Creating Web Application with Flutter and Laravel Framework. \nI have 2 years of experience in this fields.',
      'services': [
        'I design user-friendly interface',
        'I create fully funtioning Websites',
        'I create backend for the Website',
        'Manage Your Website till the end',
      ],
    };

    final List websiteExperience = [
      {
        'title': 'fifteen',
        'image': 'https://images.unsplash.com/photo-1460925895917-afdab827c52f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8d2Vic2l0ZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
      },
    ];

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
            first: 'My Services',
            second: 'What I Offer',
          ),
          const SizedBox(
            height: 25,
          ),
          Expanded(
            flex: 7,
            child: SizedBox(
              width: AppResonsive.isMobile(context) ? double.infinity : MediaQuery.of(context).size.width * 0.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    controller: rowScrollController,
                    child: Row(
                      children: [
                        ServiceCard(
                          services: mobileApplicationServices,
                          svgCode: mobileAppSvgCode,
                        ),
                        ...mobileExperience.map(
                          (appExperience) => ExperienceCard(
                            title: appExperience['title'],
                            image: appExperience['image'],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    controller: rowScrollController,
                    child: Row(
                      children: [
                        ServiceCard(
                          services: webApplicationServices,
                          svgCode: websiteSvgCode,
                        ),
                        ...websiteExperience.map(
                          (webExperience) => ExperienceCard(
                            title: webExperience['title'],
                            image: webExperience['image'],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
