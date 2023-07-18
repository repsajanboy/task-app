import 'package:flutter/material.dart';

import '../../../style/colors.dart';
import '../../../utils/custom_widgets/weekly_timeline/weekly_timeline_widget.dart';
import '../../../utils/extensions/context_extension.dart';
import 'inprogress_horizontal_widget.dart';
import 'todo_horizontal_widget.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
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
          padding: const EdgeInsets.only(
              top: 8.0, bottom: 16.0, left: 24.0, right: 24.0),
          child: RichText(
            text: TextSpan(
              text: 'You\'ve got ',
              style: context.typo.dashboardTitle(),
              children: [
                const TextSpan(
                  text: '5 ',
                  style: TextStyle(
                    color: Colors.orangeAccent,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lato',
                    fontSize: 20.0,
                  ),
                ),
                TextSpan(
                  text: 'tasks today',
                  style: context.typo.dashboardTitle(),
                )
              ],
            ),
          ),
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
        const Expanded(
          child: ToDoHorizontalWidget(),
        ),
        const SizedBox(height: 16.0),
        const Expanded(
          child: InProgressHorizontalWidget(),
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
              const CircleAvatar(
                backgroundImage: AssetImage('assets/images/avatar.jpeg'),
              ),
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
