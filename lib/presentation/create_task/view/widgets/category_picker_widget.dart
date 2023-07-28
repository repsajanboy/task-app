import 'package:flutter/material.dart';

import '../../../../style/colors.dart';
import '../../../../utils/extensions/context_extension.dart';

class CategoryPickerWidget extends StatelessWidget {
  const CategoryPickerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Project',
          style: context.typo.createTaskLabels(),
        ),
        const SizedBox(
          height: 12.0,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.start,
            spacing: 12.0,
            runSpacing: 12.0,
            direction: Axis.horizontal,
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: AppColors.accentColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(32.0),
                  ),
                  boxShadow: [
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
                child: const Text(
                  'Task App',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: AppColors.widgetBackground,
                  borderRadius: BorderRadius.all(
                    Radius.circular(32.0),
                  ),
                  boxShadow: [
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
                child: const Text(
                  'Project X',
                  style: TextStyle(color: AppColors.greyColor),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: AppColors.widgetBackground,
                  borderRadius: BorderRadius.all(
                    Radius.circular(32.0),
                  ),
                  boxShadow: [
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
                child: const Text(
                  'Meeting',
                  style: TextStyle(color: AppColors.greyColor),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: AppColors.widgetBackground,
                  borderRadius: BorderRadius.all(
                    Radius.circular(32.0),
                  ),
                  boxShadow: [
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
                child: const Text(
                  'Dev',
                  style: TextStyle(color: AppColors.greyColor),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
