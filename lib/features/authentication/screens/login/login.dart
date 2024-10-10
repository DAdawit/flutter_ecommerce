import 'package:e_commerce/common/styles/spacing_styles.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                      height: 150,
                      image: AssetImage(
                          dark ? TImages.lightAppLogo : TImages.darkAppLogo)),
                  Text(
                    TTexts.loginTitle,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: TSizes.sm,
                  ),
                  Text(
                    TTexts.loginSubTitle,
                    style: Theme.of(context).textTheme.bodySmall,
                  )
                ],
              ),

              const SizedBox(
                height: TSizes.sm,
              ),
              // Form
              Form(
                  child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: TSizes.spaceBtwSections,
                ),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.direct_right),
                          labelText: TTexts.email),
                    ),
                    const SizedBox(
                      height: TSizes.sm,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: TTexts.password,
                          suffixIcon: Icon(Iconsax.eye_slash)),
                    ),
                    const SizedBox(
                      height: TSizes.sm,
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (value) {}),
                            const Text(TTexts.rememberMe)
                          ],
                        ),
                        // Forget password
                        TextButton(
                            onPressed: () {},
                            child: const Text(TTexts.forgetPassword))
                      ],
                    ),
                    const SizedBox(
                      height: TSizes.sm,
                    ),
                    // signin button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {}, child: const Text(TTexts.signIn)),
                    ),
                    const SizedBox(
                      height: TSizes.spaceBtwItems,
                    ),
                    // create account button
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                          onPressed: () {},
                          child: const Text(TTexts.createAccount)),
                    )
                  ],
                ),
              )),
// Divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Divider(
                      color: dark ? TColors.darkerGrey : TColors.grey,
                      thickness: 0.5,
                      indent: 60,
                      endIndent: 5,
                    ),
                  ),
                  Text(
                    TTexts.orSignInWith,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Flexible(
                    child: Divider(
                      color: dark ? TColors.darkerGrey : TColors.grey,
                      thickness: 0.5,
                      indent: 5,
                      endIndent: 60,
                    ),
                  )
                ],
              )
              // footer
            ],
          ),
        ),
      ),
    );
  }
}
