import 'package:flutter/material.dart';

import '../widgets/main_navigation_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: MainNavigationSlider(
              items: [
                MainNavigationItem(
                  title: 'CarPlay',
                  actionTitle: 'Connect to Phone',
                ),
                MainNavigationItem(
                  title: 'Communication',
                  actionTitle: 'Open',
                ),
                MainNavigationItem(
                  title: 'Test 3',
                  actionTitle: 'View Profile',
                ),
                MainNavigationItem(
                  title: 'Test 4',
                  actionTitle: 'Open',
                ),
                MainNavigationItem(
                  title: 'Settings',
                  actionTitle: 'Configure System',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
