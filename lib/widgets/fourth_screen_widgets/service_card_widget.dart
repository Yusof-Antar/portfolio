import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../logic/provider/color_changer.dart';
import 'category_service_widget.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    Key? key,
    required this.services,
    required this.svgCode,
  }) : super(key: key);

  final Map services;
  final String svgCode;

  @override
  Widget build(BuildContext context) {
    final colorChanger = Provider.of<ColorChanger>(
      context,
      listen: false,
    );
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: GestureDetector(
        onTap: () {
          showDialog(
            barrierColor: Theme.of(context).colorScheme.primary.withOpacity(0.5),
            context: context,
            builder: (context) => Dialog(
              backgroundColor: Colors.transparent,
              child: ConstrainedBox(
                constraints: const BoxConstraints(
                  maxHeight: 450,
                  maxWidth: 450,
                ),
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          services['title'],
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        AutoSizeText(
                          services['description'],
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: services['services']
                                .map<Widget>(
                                  (service) => ServiceList(
                                    description: service,
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        child: CategoryService(
          title: services['title'],
          mobileAppSvgCode: svgCode,
          colorChanger: colorChanger,
        ),
      ),
    );
  }
}

class ServiceList extends StatelessWidget {
  final String description;
  const ServiceList({
    required this.description,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            'assets/icon/code-solid.svg',
            color: Theme.of(context).colorScheme.secondary,
            height: 20,
            width: 25,
          ),
          const SizedBox(
            width: 5,
          ),
          Flexible(
            child: AutoSizeText(
              description,
              maxLines: 1,
              style: const TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          SvgPicture.asset(
            'assets/icon/code-solid.svg',
            color: Theme.of(context).colorScheme.secondary,
            height: 20,
            width: 25,
          ),
        ],
      ),
    );
  }
}
