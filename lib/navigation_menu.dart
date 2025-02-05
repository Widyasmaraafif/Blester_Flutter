import 'package:blester/screens/account/account_screen.dart';
import 'package:blester/screens/home/home_screen.dart';
import 'package:blester/screens/search/search_screen.dart';
import 'package:blester/screens/task/task_screen.dart';
import 'package:blester/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
            backgroundColor: darkMode ? Colors.black : Colors.white,
            indicatorColor: darkMode ? Colors.white.withOpacity(0.1) : Colors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.task), label: 'Task'),
            NavigationDestination(
                icon: Icon(Iconsax.search_normal), label: 'Search'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Account'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const TaskScreen(),
    const SearchScreen(),
    const AccountScreen(),
  ];
}
