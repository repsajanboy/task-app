import 'package:flutter/material.dart';

import '../../../style/colors.dart';
import '../../../utils/extensions/context_extension.dart';
import 'widgets/task_inprogress_widget.dart';
import 'widgets/task_todo_widget.dart';

class TaskListPage extends StatelessWidget {
  const TaskListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 12.0, bottom: 16.0, right: 24.0, left: 24.0),
              alignment: Alignment.center,
              child: Text(
                'Your Tasks',
                style: context.typo.dashboardTitle(),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .3,
                    child: const TaskInProgressWidget(),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .7,
                    child: const TaskTodoWidget(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
