import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/commons/app_responsive.dart';
import 'package:portfolio/logic/provider/color_changer.dart';
import 'package:provider/provider.dart';

import '../widgets/commons/header_widget.dart';
import '../widgets/fifth_screen_widgets/contact_card_widget.dart';
import '../widgets/fifth_screen_widgets/write_me_field_widget.dart';

class FifthPage extends StatelessWidget {
  const FifthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorChanger = Provider.of<ColorChanger>(
      context,
      listen: false,
    );
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController projectController = TextEditingController();
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
            first: 'Get in Touch',
            second: 'Contact Me',
          ),
          const SizedBox(
            height: 25,
          ),
          if (AppResonsive.isDesktop(context) && MediaQuery.of(context).size.height >= 600)
            Expanded(
              flex: 7,
              child: SizedBox(
                width: AppResonsive.isMobile(context) ? double.infinity : MediaQuery.of(context).size.width * 0.5,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            flex: 1,
                            child: AutoSizeText(
                              'Talk To Me',
                              maxLines: 1,
                              style: TextStyle(
                                color: Theme.of(context).colorScheme.secondary,
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const ContactMeCard(
                            svgAsset: 'assets/icon/inbox-solid.svg',
                            title: 'Email',
                            subtitle: 'youssof.antar@gmail.com',
                            link: 'https://www.instagram.com/yusof_antar/',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const ContactMeCard(
                            svgAsset: 'assets/icon/whatsapp-svgrepo-com.svg',
                            title: 'Whatsapp',
                            subtitle: '+961 71 344 727',
                            link: 'https://wa.me/71344727',
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const ContactMeCard(
                            svgAsset: 'assets/icon/instagram-brands.svg',
                            title: 'Instagram',
                            subtitle: 'yusof_antar',
                            link: 'https://www.instagram.com/yusof_antar/',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Flexible(
                            flex: 1,
                            child: AutoSizeText(
                              'Write Me Your Project',
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 26,
                                color: Theme.of(context).colorScheme.secondary,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          WriteMeField(
                            controller: nameController,
                            hint: 'Insert you name',
                            label: 'Name',
                            expands: false,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          WriteMeField(
                            controller: emailController,
                            hint: 'Insert you email',
                            label: 'Email',
                            expands: false,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          WriteMeField(
                            controller: projectController,
                            hint: 'Insert you project',
                            label: 'Project',
                            expands: true,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Flexible(
                            flex: 1,
                            child: TextButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                padding: MaterialStateProperty.all(
                                  const EdgeInsets.symmetric(
                                    horizontal: 60,
                                    vertical: 20,
                                  ),
                                ),
                                backgroundColor: MaterialStateProperty.all(
                                  Theme.of(context).colorScheme.secondary,
                                ),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                              ),
                              child: FittedBox(
                                child: Text(
                                  'Send',
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
                  ],
                ),
              ),
            )
          else
            Expanded(
              flex: 7,
              child: SizedBox(
                width: AppResonsive.isMobile(context) ? double.infinity : MediaQuery.of(context).size.width * 0.5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          ContactMeCard(
                            svgAsset: 'assets/icon/inbox-solid.svg',
                            title: 'Email',
                            subtitle: 'youssof.antar@gmail.com',
                            link: 'https://www.instagram.com/yusof_antar/',
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ContactMeCard(
                            svgAsset: 'assets/icon/whatsapp-svgrepo-com.svg',
                            title: 'Whatsapp',
                            subtitle: '+961 71 344 727',
                            link: 'https://wa.me/71344727',
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          ContactMeCard(
                            svgAsset: 'assets/icon/instagram-brands.svg',
                            title: 'Instagram',
                            subtitle: 'yusof_antar',
                            link: 'https://www.instagram.com/yusof_antar/',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
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
