import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/commons/app_responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactMeCard extends StatelessWidget {
  final String svgAsset, title, subtitle, link;
  const ContactMeCard({
    required this.svgAsset,
    required this.title,
    required this.subtitle,
    required this.link,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
      child: GestureDetector(
        onTap: () async {
          final uri = Uri.parse(link);
          if (await canLaunchUrl(uri)) {
            await launchUrl(
              uri,
            );
          }
        },
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: 140,
            maxWidth: 280,
          ),
          child: AspectRatio(
            aspectRatio: AppResonsive.isDesktop(context) ? 2 : 1.1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Theme.of(context).colorScheme.secondary,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  Expanded(
                    flex: 1,
                    child: SvgPicture.asset(
                      svgAsset,
                      color: Theme.of(context).colorScheme.primary,
                      height: 35,
                      width: 35,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: AutoSizeText(
                      title,
                      maxLines: 1,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  Expanded(
                    child: AutoSizeText(
                      subtitle,
                      maxLines: 1,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    child: AutoSizeText(
                      'Write Me',
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
