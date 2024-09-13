import 'package:shoptech/core/extensions/text_style_extensions.dart';
import 'package:shoptech/core/res/styles/colours.dart';
import 'package:shoptech/core/res/styles/text.dart';
import 'package:flutter/material.dart';

class shoptech extends StatelessWidget {
  const shoptech({super.key, this.style});

  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: 'Shop',
        style: style ?? TextStyles.appLogo.white,
        children: const [
          TextSpan(
            text: 'tech',
            style: TextStyle(color: Colours.lightThemeSecondaryColour),
          ),
        ],
      ),
    );
  }
}
