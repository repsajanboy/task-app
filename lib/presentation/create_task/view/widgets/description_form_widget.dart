import 'package:flutter/material.dart';

import '../../../../style/colors.dart';
import '../../../../utils/extensions/context_extension.dart';

class DescriptionFormWidget extends StatelessWidget {
  const DescriptionFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: context.typo.createTaskLabels(),
        ),
        const SizedBox(
          height: 4.0,
        ),
        Container(
          height: 150,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
          alignment: Alignment.topLeft,
          decoration: const BoxDecoration(
            color: AppColors.formBackground,
            borderRadius: BorderRadius.all(
              Radius.circular(16.0),
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, blurRadius: 10.0, offset: Offset(4, 8))
            ],
          ),
          child: const Text(
            'Create a dashboard screen containing different list of tasks, clean margins and padding, and icon colors',
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}