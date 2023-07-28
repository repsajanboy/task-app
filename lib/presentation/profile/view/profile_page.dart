import 'package:flutter/material.dart';

import '../../../style/colors.dart';
import '../../../utils/extensions/context_extension.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24.0, vertical: 12.0),
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: const Image(
                        width: 120,
                        height: 120,
                        image: AssetImage(
                          'assets/images/avatar.jpeg',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: const Text(
                      'Jasper Monterey',
                      style: TextStyle(
                        color: AppColors.mainColor,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24.0, vertical: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 80.0,
                          height: 80.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18.0),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black45,
                                blurRadius: 10,
                                offset: Offset(4, 8), // Shadow position
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '3',
                                style: context.typo.dashboardTitle(),
                              ),
                              Text(
                                'Pending',
                                style: context.typo.dashboardGreyTexts(),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 80.0,
                          height: 80.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18.0),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black45,
                                blurRadius: 10,
                                offset: Offset(4, 8), // Shadow position
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '2',
                                style: context.typo.dashboardTitle(),
                              ),
                              Text(
                                'In Progress',
                                style: context.typo.dashboardGreyTexts(),
                              )
                            ],
                          ),
                        ),
                        Container(
                          width: 80.0,
                          height: 80.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(18.0),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black45,
                                blurRadius: 10,
                                offset: Offset(4, 8), // Shadow position
                              ),
                            ],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '5',
                                style: context.typo.dashboardTitle(),
                              ),
                              Text(
                                'All',
                                style: context.typo.dashboardGreyTexts(),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 4.0),
              child: Divider(
                thickness: 3,
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 4.0),
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              decoration: const BoxDecoration(
                color: Colors.white60,
              ),
              child: ListTile(
                leading: const SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child: Center(
                    child: Icon(
                      Icons.developer_board_outlined,
                      color: AppColors.mainColor,
                      size: 30.0,
                    ),
                  ),
                ),
                title: const Text(
                  'Manage Categories',
                  style: TextStyle(
                    color: AppColors.mainColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                trailing: const Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.orangeAccent,
                  size: 30.0,
                ),
                onTap: () {},
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 4.0),
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              decoration: const BoxDecoration(
                color: Colors.white60,
              ),
              child: ListTile(
                leading: const SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child: Center(
                    child: Icon(
                      Icons.settings_outlined,
                      color: AppColors.mainColor,
                      size: 30.0,
                    ),
                  ),
                ),
                title: const Text(
                  'Settings',
                  style: TextStyle(
                    color: AppColors.mainColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                trailing: const Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.orangeAccent,
                  size: 30.0,
                ),
                onTap: () {},
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 4.0),
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              decoration: const BoxDecoration(
                color: Colors.white60,
              ),
              child: ListTile(
                leading: const SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child: Center(
                    child: Icon(
                      Icons.shield_outlined,
                      color: AppColors.mainColor,
                      size: 30.0,
                    ),
                  ),
                ),
                title: const Text(
                  'Privacy Policy',
                  style: TextStyle(
                    color: AppColors.mainColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                trailing: const Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.orangeAccent,
                  size: 30.0,
                ),
                onTap: () {},
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 4.0),
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              decoration: const BoxDecoration(
                color: Colors.white60,
              ),
              child: ListTile(
                leading: const SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child: Center(
                    child: Icon(
                      Icons.comment_outlined,
                      color: AppColors.mainColor,
                      size: 30.0,
                    ),
                  ),
                ),
                title: const Text(
                  'Help & Support',
                  style: TextStyle(
                    color: AppColors.mainColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                trailing: const Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.orangeAccent,
                  size: 30.0,
                ),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
