import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/logic/provider/color_changer.dart';
import 'package:portfolio/screen/fifth_page.dart';
import 'package:portfolio/screen/first_page.dart';
import 'package:portfolio/screen/fourth_page.dart';
import 'package:portfolio/screen/second_page.dart';
import 'package:portfolio/screen/third_page.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

String secondPageSvg = '';
String frameworkSvgCode = '';
String languagesSvgCode = '';
String skillsSvgCode = '';
String mobileAppSvgCode = '';
String websiteSvgCode = '';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();

  secondPageSvg = await rootBundle.loadString("assets/images/second_page.svg");
  frameworkSvgCode = await rootBundle.loadString("assets/images/framework_svg.svg");
  languagesSvgCode = await rootBundle.loadString("assets/images/languages_svg.svg");
  skillsSvgCode = await rootBundle.loadString("assets/images/skills_svg.svg");
  mobileAppSvgCode = await rootBundle.loadString("assets/images/mobile_app_svg.svg");
  websiteSvgCode = await rootBundle.loadString('assets/images/website_svg.svg');

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (BuildContext context) => ColorChanger(
            primary: prefs.getInt('primary') ?? const Color(0xff120624).value,
            secondary: prefs.getInt('secondary') ?? const Color(0xffDEACF5).value,
          ),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ColorChanger>(
      builder: (context, colorChanger, _) => MaterialApp(
        scrollBehavior: MyCustomScrollBehavior(),
        debugShowCheckedModeBanner: false,
        title: 'Yusof Antar\'s Portfolio',
        theme: ThemeData().copyWith(
          colorScheme: ThemeData().colorScheme.copyWith(
                primary: Color(colorChanger.getPrimary),
                secondary: Color(colorChanger.getSecondary),
              ),
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: Color(colorChanger.getSecondary),
                displayColor: Color(colorChanger.getSecondary),
              ),
        ),
        home: const Screen(),
      ),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  final PageController pageController = PageController(initialPage: 0);
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Consumer<ColorChanger>(
      builder: (context, colorChanger, _) {
        return Scaffold(
          appBar: AppBar(
            toolbarHeight: 50,
            elevation: 0,
            centerTitle: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    pageController.animateToPage(
                      0,
                      duration: const Duration(
                        milliseconds: 500,
                      ),
                      curve: Curves.linear,
                    );
                  },
                  child: Text(
                    'Yusof',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    ColorChanger colorChanger = Provider.of(
                      context,
                      listen: false,
                    );
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        title: const Text(
                          'Change Website Color',
                        ),
                        content: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text('Primay Color:'),
                              const SizedBox(
                                height: 5,
                              ),
                              HueRingPicker(
                                pickerColor: Theme.of(context).colorScheme.primary,
                                portraitOnly: true,
                                onColorChanged: (color) {
                                  colorChanger.changePrimaryColor(color.value);
                                },
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Text('Secondary Color:'),
                              const SizedBox(
                                height: 5,
                              ),
                              HueRingPicker(
                                pickerColor: Theme.of(context).colorScheme.secondary,
                                portraitOnly: true,
                                onColorChanged: (color) {
                                  colorChanger.changeSecondaryColor(color.value);
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  child: SvgPicture.asset(
                    'assets/icon/code-solid.svg',
                    color: Theme.of(context).colorScheme.secondary,
                    height: 30,
                    width: 40,
                  ),
                ),
              ],
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: Container(
            width: 400,
            height: 50,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary.withOpacity(0.6),
              borderRadius: BorderRadius.circular(90),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundColor: pageIndex == 0 ? Theme.of(context).colorScheme.primary : Colors.transparent,
                  child: IconButton(
                    onPressed: () {
                      if (pageIndex != 0) {
                        pageController.animateToPage(
                          0,
                          duration: Duration(milliseconds: (0 - pageIndex).abs() * 500),
                          curve: Curves.linear,
                        );
                      }
                    },
                    icon: SvgPicture.asset(
                      'assets/icon/house-solid.svg',
                      color: pageIndex == 0 ? Theme.of(context).colorScheme.secondary : Theme.of(context).colorScheme.primary,
                      height: 20,
                    ),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: pageIndex == 1 ? Theme.of(context).colorScheme.primary : Colors.transparent,
                  child: IconButton(
                    onPressed: () {
                      if (pageIndex != 1) {
                        pageController.animateToPage(
                          1,
                          duration: Duration(milliseconds: (1 - pageIndex).abs() * 500),
                          curve: Curves.linear,
                        );
                      }
                    },
                    icon: SvgPicture.asset(
                      'assets/icon/user-solid.svg',
                      color: pageIndex == 1 ? Theme.of(context).colorScheme.secondary : Theme.of(context).colorScheme.primary,
                      height: 20,
                    ),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: pageIndex == 2 ? Theme.of(context).colorScheme.primary : Colors.transparent,
                  child: IconButton(
                    onPressed: () {
                      if (pageIndex != 2) {
                        pageController.animateToPage(
                          2,
                          duration: Duration(milliseconds: (2 - pageIndex).abs() * 500),
                          curve: Curves.linear,
                        );
                      }
                    },
                    icon: SvgPicture.asset(
                      'assets/icon/book-solid.svg',
                      color: pageIndex == 2 ? Theme.of(context).colorScheme.secondary : Theme.of(context).colorScheme.primary,
                      height: 20,
                    ),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: pageIndex == 3 ? Theme.of(context).colorScheme.primary : Colors.transparent,
                  child: IconButton(
                    onPressed: () {
                      if (pageIndex != 3) {
                        pageController.animateToPage(
                          3,
                          duration: Duration(milliseconds: (3 - pageIndex).abs() * 500),
                          curve: Curves.linear,
                        );
                      }
                    },
                    icon: SvgPicture.asset(
                      'assets/icon/briefcase-solid.svg',
                      color: pageIndex == 3 ? Theme.of(context).colorScheme.secondary : Theme.of(context).colorScheme.primary,
                      height: 20,
                    ),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: pageIndex == 4 ? Theme.of(context).colorScheme.primary : Colors.transparent,
                  child: IconButton(
                    onPressed: () {
                      if (pageIndex != 4) {
                        pageController.animateToPage(
                          4,
                          duration: Duration(milliseconds: (4 - pageIndex).abs() * 500),
                          curve: Curves.linear,
                        );
                      }
                    },
                    icon: SvgPicture.asset(
                      'assets/icon/message-svgrepo-com.svg',
                      color: pageIndex == 4 ? Theme.of(context).colorScheme.secondary : Theme.of(context).colorScheme.primary,
                      height: 20,
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
            ),
            color: Theme.of(context).colorScheme.primary,
            child: PageView(
              scrollDirection: Axis.vertical,
              controller: pageController,
              onPageChanged: (index) {
                setState(() {
                  pageIndex = index;
                });
              },
              children: [
                FirstPage(
                  pageController: pageController,
                ),
                SecondPage(
                  svgCode: secondPageSvg,
                  pageController: pageController,
                ),
                ThirdPage(
                  frameworkSvgCode: frameworkSvgCode,
                  languagesSvgCode: languagesSvgCode,
                  skillsSvgCode: skillsSvgCode,
                ),
                FourthPage(
                  mobileAppSvgCode: mobileAppSvgCode,
                  websiteSvgCode: websiteSvgCode,
                ),
                const FifthPage(),
              ],
            ),
          ),
        );
      },
    );
  }
}
