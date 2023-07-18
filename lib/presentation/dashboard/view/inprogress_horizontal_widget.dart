import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../data/tasks/task.dart';
import '../../../style/colors.dart';
import '../../../utils/extensions/context_extension.dart';

class InProgressHorizontalWidget extends StatelessWidget {
  const InProgressHorizontalWidget({super.key});

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
                    'In progress',
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
                              element.status == TaskStatus.inprogress)
                          .length
                          .toString(),
                      style: const TextStyle(color: Colors.white),
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
            child: ListView.builder(
              itemCount: tasks
                  .where((element) => element.status == TaskStatus.inprogress)
                  .length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                List<Task> taskInProgress = tasks
                    .where((element) => element.status == TaskStatus.inprogress)
                    .toList();
                return Container(
                  width: MediaQuery.of(context).size.width * .75,
                  margin: const EdgeInsets.only(right: 8.0),
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
                                taskInProgress[index].category,
                                style: context.typo.dashboardGreyTexts(),
                              ),
                              const Icon(
                                Icons.more_horiz_outlined,
                                size: 32,
                                color: Colors.orangeAccent,
                              ),
                            ],
                          ),
                          Text(
                            taskInProgress[index].title,
                            style: context.typo.dashboardTitle(),
                          ),
                          LinearProgressIndicator(
                            value: taskInProgress[index].progress / 100,
                            backgroundColor: AppColors.background,
                            color: Colors.orangeAccent,
                          ),
                          Text(
                            'till ${DateFormat("E", "en_US").format(taskInProgress[index].dueDate)}, ${DateFormat("d", "en_US").format(taskInProgress[index].dueDate)} ${DateFormat("LLLL", "en_US").format(taskInProgress[index].dueDate)}',
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
