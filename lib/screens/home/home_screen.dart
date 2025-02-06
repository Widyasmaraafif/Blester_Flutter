import 'package:blester/common/widgets/appbar/appbar.dart';
import 'package:blester/common/widgets/texts/section_heading.dart';
import 'package:blester/screens/home/project_screen.dart';
import 'package:blester/screens/home/widgets/assign_to_me.dart';
import 'package:blester/screens/home/widgets/board.dart';
import 'package:blester/screens/home/widgets/project_box.dart';
import 'package:blester/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
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
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                          onTap: () => Get.to(() => const ProjectScreen()),
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
                  MyBoard(
                    icon: Iconsax.presention_chart,
                    title: 'Create Project',
                    subtitle: 'You can create new project task',
                  ),
                  SizedBox(height: MySizes.sm / 2),
                  MyBoard(
                    icon: Iconsax.ranking,
                    title: 'Create Goals',
                    subtitle: 'You can create new goals board',
                  ),
                  SizedBox(height: MySizes.sm / 2),
                  MyBoard(
                    icon: Iconsax.user_edit,
                    title: 'Create Portfolio',
                    subtitle: 'You can create new portfolio task',
                  ),
                  SizedBox(height: MySizes.spaceBtwSections),
                  MySectionHeading(
                    title: 'Assigned to me',
                    showActionButton: false,
                  ),
                  SizedBox(
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      separatorBuilder: (_, __) => const SizedBox(
                        width: MySizes.md,
                      ),
                      itemCount: 4,
                      itemBuilder: (_, index) {
                        return AssignToMe(
                          projectName: 'HR - Project',
                          describeTask:
                              'Create Mobile Responsive, lets get this project done',
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
