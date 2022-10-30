import 'package:flutter/material.dart';

import '../../../shared/design_system/theme/theme.dart';

class InfoOnBoardingPage extends StatelessWidget {
  const InfoOnBoardingPage({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.image,
  }) : super(key: key);

  final String title;
  final String subTitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(image),
            const SizedBox(height: 24),
            Text(
              title,
              style: Theme.of(context)
                  .textTheme
                  .headline3
                  ?.copyWith(color: Colors.black),
            ),
            const SizedBox(height: 8),
            Text(
              subTitle,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: DefaultColors.subtitleColor),
            ),
          ],
        ),
      ),
    );
  }
}
