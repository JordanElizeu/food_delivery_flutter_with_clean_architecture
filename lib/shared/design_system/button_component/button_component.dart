import 'package:flutter/material.dart';

import '../theme/theme.dart';

class ButtonComponent extends StatelessWidget {
  const ButtonComponent({
    Key? key,
    required this.onPressed,
    required this.text,
    this.borderRadius,
    this.rightIcon,
    this.textColor,
    this.padding,
  }) : super(key: key);

  final Function() onPressed;
  final double? borderRadius;
  final Widget? rightIcon;
  final Color? textColor;
  final String text;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxHeight: 50,
        minHeight: 50,
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            DefaultColors.primaryColor,
          ),
          padding: MaterialStateProperty.all(padding),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                borderRadius ?? 0,
              ),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 17),
            Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .button
                  ?.copyWith(color: textColor ?? Colors.white),
            ),
            const SizedBox(width: 17),
            rightIcon != null ? rightIcon! : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
