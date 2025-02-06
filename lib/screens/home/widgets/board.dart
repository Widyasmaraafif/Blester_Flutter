import 'package:blester/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class MyBoard extends StatelessWidget {
  const MyBoard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.onTap,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          border: Border.symmetric(
            horizontal: BorderSide(),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: MySizes.sm),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    icon,
                    size: 64,
                  ),
                  SizedBox(width: MySizes.spaceBtwItems / 2),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(fontWeight: FontWeight.w800),
                      ),
                      Text(subtitle),
                    ],
                  ),
                ],
              ),
              Icon(Iconsax.arrow_right_3)
            ],
          ),
        ),
      ),
    );
  }
}
