import 'package:blester/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyTaskProgress extends StatelessWidget {
  const MyTaskProgress({
    super.key, required this.color, required this.title, required this.numberOfTask,
  });

  final Color color;
  final String title;
  final int numberOfTask;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: MySizes.sm,
        horizontal: MySizes.defaultSpace,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Iconsax.arrow_down_14, size: 16, color: color),
              SizedBox(width: MySizes.sm),
              Icon(Iconsax.record_circle, size: 16, color: color),
              SizedBox(width: MySizes.sm),
              Text(
                title,
                style: TextStyle(color: color, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Text('$numberOfTask Task', style: TextStyle(color: Colors.black.withOpacity(0.5)),)
        ],
      ),
    );
  }
}
