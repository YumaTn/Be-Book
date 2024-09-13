import 'package:shoptech/core/common/widgets/app_bar_bottom.dart';
import 'package:shoptech/core/extensions/text_style_extensions.dart';
import 'package:shoptech/core/res/styles/text.dart';
import 'package:shoptech/src/auth/presentation/widgets/reset_password_form.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({required this.email, super.key});

  static const path = '/reset-password';

  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Reset Password',
          style: TextStyles.headingSemiBold,
        ),
        bottom: const AppBarBottom(),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
        children: [
          Text(
            'Change Password',
            style: TextStyles.headingBold3.adaptiveColour(context),
          ),
          Text(
            'Pick a new secure password',
            style: TextStyles.paragraphSubTextRegular1.grey,
          ),
          const Gap(40),
          ResetPasswordForm(email: email),
        ],
      ),
    );
  }
}
