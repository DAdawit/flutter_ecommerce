import 'package:e_commerce/common/styles/helpers/capitalize.dart';
import 'package:e_commerce/common/styles/widgets/login_signup/form_divider.dart';
import 'package:e_commerce/common/styles/widgets/login_signup/social_buttons.dart';
import 'package:e_commerce/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';

import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              const TSignupForm(),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              FormDivider(dividerText: TTexts.orSignUpWith.capitalize()),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),
              const SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
