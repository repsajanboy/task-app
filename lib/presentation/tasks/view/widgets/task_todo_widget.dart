import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../data/tasks/task.dart';
import '../../../../utils/extensions/context_extension.dart';

class TaskTodoWidget extends StatelessWidget {
  const TaskTodoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Upcoming Tasks',
                style: context.typo.dashboardTitle(),
              ),
              const SizedBox(width: 16.0),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.orangeAccent,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  tasks
                      .where((element) =>
                          element.status == TaskStatus.todo)
                      .length
                      .toString(),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8.0),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemExtent: 160,
              itemCount: tasks
                  .where((element) => element.status == TaskStatus.todo)
                  .length,
              itemBuilder: (context, index) {
                List<Task> todoTasks = tasks
                    .where((element) => element.status == TaskStatus.todo)
                    .toList();
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Card(
                    elevation: 10.0,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16.0),
                      ),
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
                                color: Colors.orangeAccent,
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
        ],
      ),
    );
  }
}