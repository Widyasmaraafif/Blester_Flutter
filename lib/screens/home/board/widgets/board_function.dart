import 'package:blester/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyBoardFunction extends StatelessWidget {
  const MyBoardFunction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: MySizes.sm,
        horizontal: MySizes.defaultSpace,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.symmetric(
            horizontal: BorderSide(color: Colors.black.withOpacity(0.1))),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Iconsax.menu, size: 18),
                      SizedBox(width: MySizes.sm),
                      Text('List View')
                    ],
                  ),
                  Icon(Iconsax.arrow_down_14, size: 18),
                ],
              ),
            ),
          ),
          SizedBox(width: MySizes.lg),
          Text('|'),
          SizedBox(width: MySizes.lg),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    Icon(Iconsax.sort, size: 18),
                    SizedBox(width: MySizes.sm),
                    Text('Sort')
                  ],
                ),
              ),
              SizedBox(width: MySizes.lg),
              Container(
                child: Row(
                  children: [
                    Icon(Iconsax.user_add, size: 18),
                    SizedBox(width: MySizes.sm),
                    Text('Invite')
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
