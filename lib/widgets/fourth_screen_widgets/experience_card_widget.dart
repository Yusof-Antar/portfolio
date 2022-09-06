import 'package:flutter/material.dart';

class ExperienceCard extends StatelessWidget {
  final String image, title;
  const ExperienceCard({
    required this.title,
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
      ),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
          clipBehavior: Clip.hardEdge,
          height: height * 0.25,
          width: height * 0.2,
          child: Stack(
            fit: StackFit.loose,
            children: [
              Image.network(
                image,
                height: height * 0.25,
                width: height * 0.2,
                fit: BoxFit.cover,
              ),
              Container(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.70),
                height: height * 0.25,
                width: height * 0.2,
              ),
              Positioned(
                left: 0,
                top: 0,
                bottom: 0,
                right: 0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 5,
                    ),
                    FittedBox(
                      child: Text(
                        title,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                    ),
                    const Spacer(),
                    FittedBox(
                      child: Text(
                        'See Details',
                        maxLines: 1,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          decoration: TextDecoration.underline,
                          color: Theme.of(context).colorScheme.secondary,
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
      ),
    );
  }
}
