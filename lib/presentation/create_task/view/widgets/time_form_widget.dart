import 'package:flutter/material.dart';

import '../../../../style/colors.dart';
import '../../../../utils/extensions/context_extension.dart';

class TimeFormWidget extends StatelessWidget {
  const TimeFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Planned time',
          style: context.typo.createTaskLabels(),
        ),
        const SizedBox(
          height: 4.0,
        ),
        Container(
          height: 50,
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          alignment: Alignment.centerLeft,
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
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '10:00 - 15:00',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Icon(
                Icons.access_time_outlined,
                color: Colors.orangeAccent,
              )
            ],
          ),
        ),
      ],
    );
  }
}
