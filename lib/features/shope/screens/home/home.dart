import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/Containers/primary_header_container.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          TPrimaryHeaderContainer(
              child: Column(
            children: [
              TAppBar(
                showBackArrow: false,
                title: Column(
                  children: [
                    Text(
                      TTexts.homeAppbarTitle,
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium
                          ?.copyWith(color: TColors.grey),
                    ),
                    Text(
                      TTexts.homeAppbarSubTitle,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(color: TColors.white),
                    )
                  ],
                ),
                actions: [
                  Stack(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Iconsax.shopping_bag,
                            color: TColors.white,
                          )),
                      Positioned(
                        right: 0,
                          child: Container(
                        width: 18,
                        height: 18,
                        decoration: BoxDecoration(
                            color: TColors.black.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(100)),
                            child:   Center(
                              child: Text("2", style: Theme.of(context).textTheme.labelLarge!.apply(color: TColors.white, fontSizeFactor: 0.8)),
                            ),
                      ))
                    ],
                  )
                ],
              )
            ],
          )),
        ],
      ),
    ));
  }
}
