import 'package:blester/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyProjectBox extends StatelessWidget {
  const MyProjectBox({
    super.key,
    required this.colorGradient,
    required this.icon,
    required this.projectName,
    required this.taskCompleted,
    required this.taskTotal,
    this.finished = false, this.onTap,
  });

  final Color colorGradient;
  final IconData icon;
  final String projectName;
  final int taskCompleted, taskTotal;
  final bool finished;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 180,
        height: 160,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [colorGradient, Colors.white], // Gradasi biru muda ke putih
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.5],
          ),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black
                  .withOpacity(0.1), // Warna shadow dengan transparansi
              spreadRadius: 1, // Seberapa luas shadow menyebar
              blurRadius: 1, // Seberapa blur shadow
              offset: Offset(2, 4), // Posisi bayangan (X, Y)
            ),
          ],
        ),
        padding: EdgeInsets.all(MySizes.md),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(7),
              ),
              child: Icon(
                icon, color: Colors.white,
              ),
            ),
            SizedBox(height: MySizes.spaceBtwItems),
            Text(
              projectName,
              style: Theme.of(context)
                  .textTheme
                  .titleMedium
                  ?.copyWith(fontWeight: FontWeight.w700),
            ),
            SizedBox(height: MySizes.spaceBtwItems / 2),
            Row(
              children: [
                Icon(
                  Iconsax.tick_circle,
                  color: finished ? Colors.green : Colors.black,
                ),
                SizedBox(width: MySizes.sm / 2),
                Text.rich(TextSpan(children: [
                  TextSpan(
                    text: '$taskCompleted',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(fontWeight: FontWeight.w900),
                  ),
                  TextSpan(text: '/'),
                  TextSpan(text: '$taskTotal Finished'),
                ]))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
