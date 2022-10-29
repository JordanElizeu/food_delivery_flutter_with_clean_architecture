import 'package:flutter/material.dart';

import '../../../shared/theme/theme.dart';

class ButtonComponent extends StatelessWidget {
  const ButtonComponent({
    Key? key,
    required this.onPressed,
    required this.text,
    this.borderRadius,
    this.rightIcon,
    this.textColor,
  }) : super(key: key);

  final Function() onPressed;
  final double? borderRadius;
  final Widget? rightIcon;
  final Color? textColor;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          DefaultColors.primaryColor,
        ),
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
        children: [
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .button
                ?.copyWith(color: textColor ?? Colors.white),
          ),
          rightIcon != null ? rightIcon! : const SizedBox(),
        ],
      ),
    );
  }
}
