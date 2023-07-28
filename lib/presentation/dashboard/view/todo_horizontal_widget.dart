import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../data/tasks/task.dart';
import '../../../style/colors.dart';
import '../../../utils/extensions/context_extension.dart';

class ToDoHorizontalWidget extends StatelessWidget {
  const ToDoHorizontalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                        color: AppColors.accentColor,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.all(Radius.circular(8.0))),
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      tasks
                          .where((element) => element.status == TaskStatus.todo)
                          .length
                          .toString(),
                      style: const TextStyle(color: Colors.white),
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
            padding: const EdgeInsets.only(left: 20.0),
            child: ListView.builder(
              itemCount: tasks
                  .where((element) => element.status == TaskStatus.todo)
                  .length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                List<Task> todoTasks = tasks
                    .where((element) => element.status == TaskStatus.todo)
                    .toList();
                return Container(
                  width: MediaQuery.of(context).size.width * .5,
                  margin: const EdgeInsets.only(
                      left: 8.0, right: 16.0, bottom: 12.0),
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.widgetBackground,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xff1c1d1f),
                          offset: Offset(4, 4),
                          blurRadius: 4.0,
                          spreadRadius: 1,
                        ),
                        BoxShadow(
                          color: Color(0xff2e3034),
                          offset: Offset(-4, -4),
                          blurRadius: 4.0,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                todoTasks[index].category,
                                style: context.typo.dashboardGreyTexts(),
                              ),
                              const Icon(
                                Icons.border_color_outlined,
                                color: AppColors.accentColor,
                              ),
                            ],
                          ),
                          Text(
                            todoTasks[index].title,
                            style: context.typo.dashboardTitle(),
                          ),
                          Text(
                            'till ${DateFormat("E", "en_US").format(todoTasks[index].dueDate)}, ${DateFormat("d", "en_US").format(todoTasks[index].dueDate)} ${DateFormat("LLLL", "en_US").format(todoTasks[index].dueDate)}',
                            style: context.typo.dashboardGreyTexts(),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
