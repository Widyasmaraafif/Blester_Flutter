import 'package:blester/common/widgets/appbar/appbar.dart';
import 'package:blester/common/widgets/texts/section_heading.dart';
import 'package:blester/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyAppBar(
              title: Row(
                children: [
                  Icon(Iconsax.activity),
                  SizedBox(width: MySizes.sm),
                  Text(
                    'BLESTER',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontWeight: FontWeight.w900),
                  ),
                ],
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Iconsax.notification),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Iconsax.more),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: MySizes.defaultSpace),
              child: Column(
                children: [
                  MySectionHeading(
                    title: 'Recently Open',
                    showActionButton: false,
                  ),
                  SizedBox(height: MySizes.spaceBtwItems),
                  SizedBox(
                    height: 160,
                    child: ListView.separated(
                      clipBehavior: Clip.none,
                      itemCount: 6,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (_, __) => const SizedBox(
                        width: MySizes.md,
                      ),
                      itemBuilder: (_, index) {
                        return MyProjectBox(
                          colorGradient: Colors.blue,
                          taskCompleted: 2,
                          taskTotal: 16,
                          icon: Iconsax.activity,
                          projectName: 'HR - Project',
                        );
                      },
                    ),
                  ),
                  SizedBox(height: MySizes.spaceBtwSections),
                  MySectionHeading(
                    title: 'Create New Board',
                    showActionButton: false,
                  ),
                  SizedBox(height: MySizes.spaceBtwItems),
                  MyBoard(),
                  MyBoard(),
                  MyBoard(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyBoard extends StatelessWidget {
  const MyBoard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  Iconsax.document,
                  size: 64,
                ),
                SizedBox(width: MySizes.spaceBtwItems / 2),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Create Project',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontWeight: FontWeight.w800),
                    ),
                    Text('You can create new project task'),
                  ],
                ),
              ],
            ),
            Icon(Iconsax.arrow_right_3)
          ],
        ),
      ),
    );
  }
}

class MyProjectBox extends StatelessWidget {
  const MyProjectBox({
    super.key,
    required this.colorGradient,
    required this.icon,
    required this.projectName,
    required this.taskCompleted,
    required this.taskTotal,
    this.finished = false,
  });

  final Color colorGradient;
  final IconData icon;
  final String projectName;
  final int taskCompleted, taskTotal;
  final bool finished;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 160,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colorGradient, Colors.white], // Gradasi biru muda ke putih
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.1, 1.0],
        ),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black
                .withOpacity(0.2), // Warna shadow dengan transparansi
            spreadRadius: 2, // Seberapa luas shadow menyebar
            blurRadius: 2, // Seberapa blur shadow
            offset: Offset(2, 4), // Posisi bayangan (X, Y)
          ),
        ],
      ),
      padding: EdgeInsets.all(MySizes.md),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            size: 48,
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
    );
  }
}
