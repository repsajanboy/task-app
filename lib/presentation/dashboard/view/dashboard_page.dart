import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [_dashboardHeader()],
        ),
      ),
    );
  }

  Widget _dashboardHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
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
                    style: const TextStyle(
                      fontFamily: 'Lato',
                      color: Colors.black54
                    ),
                  ),
                  const Text(
                    'Jasper Janboy!',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Row(
            children: [
              Icon(Icons.search_rounded),
              SizedBox(
                width: 16.0,
              ),
              Icon(Icons.notifications_rounded),
            ],
          )
        ],
      ),
    );
  }

  String greetingMessage() {
    final timeNow = DateTime.now().toLocal().hour;

    if (timeNow <= 12) {
      return 'Good Morning,';
    } else if ((timeNow > 12) && (timeNow <= 16)) {
      return 'Good Afternoon,';
    } else if ((timeNow > 16) && (timeNow < 20)) {
      return 'Good Evening,';
    } else {
      return 'Good Night,';
    }
  }
}
