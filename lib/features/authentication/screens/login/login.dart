import 'package:e_commerce/common/styles/spacing_styles.dart';
import 'package:e_commerce/common/styles/widgets/login_signup/form_divider.dart';
import 'package:e_commerce/common/styles/widgets/login_signup/social_buttons.dart';
import 'package:e_commerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_commerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
// import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
// import 'package:iconsax/iconsax.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    // final dark = THelperFunctions.isDarkMode(context);
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo
              LoginHeader(),

              // Form
              LoginForm(),
              // Divider
              FormDivider(
                dividerText: TTexts.orSignInWith,
              ),
              // footer
              SizedBox(height: TSizes.spaceBtwItems),

              SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
