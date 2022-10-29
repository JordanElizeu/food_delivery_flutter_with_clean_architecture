import 'package:flutter/material.dart';

import '../../../shared/theme/theme.dart';
import '../../shared/button_component/button_component.dart';
import 'pages.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  late final PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(ThemeConstants.pagePadding),
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: pageController,
                children: const [
                  InfoOnBoardingOnePage(),
                  InfoOnBoardingTwoPage(),
                  InfoOnBoardingTwoPage(),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Divider(
              height: 1,
              color: DefaultColors.dividerColor,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Pular',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      ?.copyWith(color: Colors.black),
                ),
                ButtonComponent(
                  onPressed: () {},
                  text: 'Próximo',
                  rightIcon: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        ThemeConstants.smallButtonBorder,
                      ),
                      color: DefaultColors.secondaryColor,
                    ),
                  ),
                  borderRadius: ThemeConstants.smallButtonBorder,
                ),
              ],
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
