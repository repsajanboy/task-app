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
          height: 4.0,
        ),
        const Align(
          alignment: Alignment.topLeft,
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.start,
            spacing: 12.0,
            runSpacing: 12.0,
            direction: Axis.horizontal,
            children: [
              Chip(
                labelPadding: EdgeInsets.all(8.0),
                label: Text("Task App"),
                labelStyle: TextStyle(color: Colors.white),
                elevation: 5.0,
                backgroundColor: AppColors.mainColor,
              ),
              Chip(
                labelPadding: EdgeInsets.all(8.0),
                label: Text("Project X"),
                labelStyle: TextStyle(color: Colors.black54),
                elevation: 5.0,
              ),
              Chip(
                labelPadding: EdgeInsets.all(8.0),
                label: Text("Meeting"),
                labelStyle: TextStyle(color: Colors.black54),
                elevation: 5.0,
              ),
              Chip(
                labelPadding: EdgeInsets.all(8.0),
                label: SizedBox(
                  width: 44.0,
                  child: Text(
                    "Dev",
                    textAlign: TextAlign.center,
                  ),
                ),
                labelStyle: TextStyle(color: Colors.black54),
                elevation: 5.0,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
