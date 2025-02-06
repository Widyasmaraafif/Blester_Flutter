import 'package:blester/common/widgets/appbar/appbar.dart';
import 'package:blester/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        showBackArrow: true,
        title:
            Text('Back to home', style: Theme.of(context).textTheme.bodyMedium),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Iconsax.add),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Iconsax.more),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.green),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: MySizes.sm, horizontal: MySizes.defaultSpace),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Iconsax.activity,
                          size: 48,
                        ),
                        SizedBox(width: MySizes.sm),
                        Text('Quickku - Project')
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
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
