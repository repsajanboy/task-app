import 'package:flutter/material.dart';

import '../../../../style/colors.dart';
import '../../../../utils/extensions/context_extension.dart';

class TitleFormWidget extends StatelessWidget {
  const TitleFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Title',
          style: context.typo.createTaskLabels(),
        ),
        const SizedBox(
          height: 12.0,
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
            'Create a dashboard screen',
            style: TextStyle(
              color: AppColors.greyColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
