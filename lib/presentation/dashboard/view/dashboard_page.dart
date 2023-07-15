import 'package:flutter/material.dart';

import '../../../style/colors.dart';
import '../../../utils/custom_widgets/weekly_timeline/weekly_timeline_widget.dart';
import '../../../utils/extensions/context_extension.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _dashboardHeader(context),
            Expanded(
              child: _dashboardMain(context),
            ),
          ],
        ),
      ),
    );
  }

  Widget _dashboardMain(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 16.0, left: 24.0, right: 24.0),
          child: Text('You\'ve got 12 tasks today',
              style: context.typo.dashboardTitle()),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * .11,
          child: WeeklyTimeline(
            DateTime.now(),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'To do',
                          style: context.typo.dashboardTitle(),
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                        Container(
                          decoration: const BoxDecoration(
                              color: Colors.orangeAccent,
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0))),
                          padding: const EdgeInsets.all(8.0),
                          child: const Text(
                            '7',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'See all',
                      style: context.typo.dashboardGreyTexts(),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8.0),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      SizedBox(
                        width: 200,
                        child: Card(
                          elevation: 10.0,
                          child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Snapchat',
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Icon(Icons.border_color_outlined),
                                  ],
                                ),
                                Text(
                                  'Redesign Splash screen',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24,
                                  ),
                                ),
                                Text(
                                  'till Mon, 7 March',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        child: Card(
                          elevation: 10.0,
                          child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Snapchat',
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Icon(Icons.border_color_outlined),
                                  ],
                                ),
                                Text(
                                  'Redesign Splash screen',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24,
                                  ),
                                ),
                                Text(
                                  'till Mon, 7 March',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        child: Card(
                          elevation: 10.0,
                          child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Snapchat',
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Icon(Icons.border_color_outlined),
                                  ],
                                ),
                                Text(
                                  'Redesign Splash screen',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24,
                                  ),
                                ),
                                Text(
                                  'till Mon, 7 March',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 16.0),
        Expanded(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'In progress',
                          style: context.typo.dashboardTitle(),
                        ),
                        const SizedBox(width: 16.0),
                        Container(
                          decoration: const BoxDecoration(
                              color: Colors.orangeAccent,
                              shape: BoxShape.rectangle,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8.0))),
                          padding: const EdgeInsets.all(8.0),
                          child: const Text(
                            '3',
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    Text(
                      'See all',
                      style: context.typo.dashboardGreyTexts(),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8.0),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 24.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      SizedBox(
                        width: 280,
                        child: Card(
                          elevation: 10.0,
                          child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Snapchat',
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Icon(Icons.border_color_outlined),
                                  ],
                                ),
                                Text(
                                  'Redesign Splash screen',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24,
                                  ),
                                ),
                                Text(
                                  'till Mon, 7 March',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        child: Card(
                          elevation: 10.0,
                          child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Snapchat',
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Icon(Icons.border_color_outlined),
                                  ],
                                ),
                                Text(
                                  'Redesign Splash screen',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24,
                                  ),
                                ),
                                Text(
                                  'till Mon, 7 March',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        child: Card(
                          elevation: 10.0,
                          child: Padding(
                            padding: EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Snapchat',
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Icon(Icons.border_color_outlined),
                                  ],
                                ),
                                Text(
                                  'Redesign Splash screen',
                                  style: TextStyle(
                                    fontFamily: 'Lato',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24,
                                  ),
                                ),
                                Text(
                                  'till Mon, 7 March',
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _dashboardHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(),
              const SizedBox(
                width: 8.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    greetingMessage(),
                    style: context.typo.dashboardGreyTexts(),
                  ),
                  Text(
                    'Jasper Janboy!',
                    style: context.typo.dashboardUser(),
                  ),
                ],
              ),
            ],
          ),
          const Row(
            children: [
              Icon(
                Icons.search_rounded,
                color: AppColors.mainColor,
              ),
              SizedBox(
                width: 16.0,
              ),
              Icon(
                Icons.notifications_outlined,
                color: AppColors.mainColor,
              ),
            ],
          )
        ],
      ),
    );
  }

  String greetingMessage() {
    final timeNow = DateTime.now().toLocal().hour;

    if (timeNow <= 12) {
      return 'Good morning,';
    } else if ((timeNow > 12) && (timeNow <= 16)) {
      return 'Good afternoon,';
    } else if ((timeNow > 16) && (timeNow < 20)) {
      return 'Good evening,';
    } else {
      return 'Good night,';
    }
  }
}
