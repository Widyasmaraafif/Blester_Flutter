import 'package:blester/common/widgets/appbar/appbar.dart';
import 'package:blester/common/widgets/texts/section_heading.dart';
import 'package:blester/screens/home/board/widgets/board_function.dart';
import 'package:blester/screens/home/board/widgets/headline_board.dart';
import 'package:blester/screens/home/board/widgets/task_box.dart';
import 'package:blester/screens/home/board/widgets/task_progress.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyHeadlineBoard(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: MySizes.sm,
                    horizontal: MySizes.defaultSpace,
                  ),
                  child: Text('Project Task'),
                ),
                MyBoardFunction(),
                MyTaskProgress(
                  color: Colors.red,
                  title: 'To do',
                  numberOfTask: 2,
                ),
                SizedBox(
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    separatorBuilder: (_, __) => const SizedBox(
                      height: MySizes.sm / 2,
                    ),
                    itemCount: 2,
                    itemBuilder: (_, index) {
                      return MyTaskBox(
                        task: 'Create Second variation Landing Page',
                      );
                    },
                  ),
                ),
                MyTaskProgress(
                  color: Colors.blue,
                  title: 'Doing',
                  numberOfTask: 4,
                ),
                SizedBox(
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    separatorBuilder: (_, __) => const SizedBox(
                      height: MySizes.sm / 2,
                    ),
                    itemCount: 4,
                    itemBuilder: (_, index) {
                      return MyTaskBox(
                        task: 'Create Second variation Landing Page',
                      );
                    },
                  ),
                ),
                MyTaskProgress(
                  color: Colors.green,
                  title: 'Done',
                  numberOfTask: 3,
                ),
                SizedBox(
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    separatorBuilder: (_, __) => const SizedBox(
                      height: MySizes.sm / 2,
                    ),
                    itemCount: 3,
                    itemBuilder: (_, index) {
                      return MyTaskBox(
                        task: 'Create Second variation Landing Page',
                      );
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
