import 'package:e_commerce/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';

class TSignupForm extends StatelessWidget {
  const TSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Form(
        child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                expands: false,
                decoration: const InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user)),
              ),
            ),
            const SizedBox(width: TSizes.spaceBtwItems),
            Expanded(
                child: TextFormField(
              expands: false,
              decoration: const InputDecoration(
                  labelText: TTexts.lastName, prefixIcon: Icon(Iconsax.user)),
            ))
          ],
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),
        TextFormField(
          expands: false,
          decoration: const InputDecoration(
              labelText: TTexts.username, prefixIcon: Icon(Iconsax.user)),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),
        TextFormField(
          decoration: const InputDecoration(
              labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct)),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),
        TextFormField(
          decoration: const InputDecoration(
              labelText: TTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),
        TextFormField(
          obscureText: true,
          decoration: const InputDecoration(
              labelText: TTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash)),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),
        Row(
          children: [
            SizedBox(
              height: 25,
              width: 12,
              child: Checkbox(value: true, onChanged: (value) {}),
            ),
            const SizedBox(
              width: TSizes.spaceBtwItems,
            ),
            Text.rich(TextSpan(
              children: [
                TextSpan(
                    text: '${TTexts.iAgreeTo} ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: '${TTexts.privacyPolicy} ',
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? TColors.white : TColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor:
                            dark ? TColors.white : TColors.primary)),
                TextSpan(
                    text: '${TTexts.and} ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: '${TTexts.termsOfUse} ',
                    style: Theme.of(context).textTheme.bodyMedium!.apply(
                        color: dark ? TColors.white : TColors.primary,
                        decoration: TextDecoration.underline,
                        decorationColor:
                            dark ? TColors.white : TColors.primary)),
              ],
            ))
          ],
        ),
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () {
                Get.to(()=>const VerifyEmail());
              }, child: const Text(TTexts.createAccount)),
        )
      ],
    ));
  }
}
