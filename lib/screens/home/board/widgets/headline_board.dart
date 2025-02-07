import 'package:blester/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyHeadlineBoard extends StatelessWidget {
  const MyHeadlineBoard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.lightGreenAccent,
            Colors.white
          ], // Gradasi biru muda ke putih
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1, 0.5],
        ),
        border: Border.symmetric(
          horizontal: BorderSide(color: Colors.blueGrey, width: 0.3),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: MySizes.md, horizontal: MySizes.defaultSpace),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Icon(
                    Iconsax.activity,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: MySizes.sm),
                Text(
                  'Quickku - Project',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                )
              ],
            ),
            SizedBox(height: MySizes.sm),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: MySizes.sm,
                    vertical: MySizes.sm / 2,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.purple.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    'Project Board',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
                SizedBox(width: MySizes.sm / 2),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: MySizes.sm,
                    vertical: MySizes.sm / 2,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Iconsax.edit,
                        size: 14,
                        color: Colors.white,
                      ),
                      SizedBox(width: MySizes.sm / 2),
                      Text(
                        'Doing',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: MySizes.sm / 2),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: MySizes.sm,
                    vertical: MySizes.sm / 2,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 0.5),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        Iconsax.people,
                        size: 14,
                        color: Colors.black,
                      ),
                      SizedBox(width: MySizes.sm / 2),
                      Text(
                        'Aghna Fikru, +2',
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}