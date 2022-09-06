import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FlippedCardWidget extends StatelessWidget {
  const FlippedCardWidget({
    Key? key,
    required this.title,
    required this.crossCount,
    required this.data,
  }) : super(key: key);

  final List<Map> data;
  final String title;
  final int crossCount;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final ScrollController gridScrollController = ScrollController();
    return Container(
      height: height * 0.4,
      width: height * 0.4,
      margin: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          const SizedBox(
            height: 0,
          ),
          Expanded(
            child: GridView.builder(
              controller: gridScrollController,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossCount,
                childAspectRatio: crossCount == 1 ? 5 : 2 / 0.9,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 35,
                vertical: 15,
              ),
              itemCount: data.length,
              itemBuilder: (context, index) => Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      SvgPicture.asset(
                        'assets/icon/certificate-solid.svg',
                        height: 10,
                        width: 10,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  data[index]['level'].isEmpty
                      ? Expanded(
                          child: AutoSizeText(
                            data[index]['title'],
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.primary,
                            ),
                          ),
                        )
                      : Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(
                                flex: 1,
                                child: AutoSizeText(
                                  data[index]['title'],
                                  style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    color: Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: AutoSizeText(
                                  data[index]['level'],
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
