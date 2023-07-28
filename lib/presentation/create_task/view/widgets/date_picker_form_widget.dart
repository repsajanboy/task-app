import 'package:flutter/material.dart';

import '../../../../style/colors.dart';
import '../../../../utils/extensions/context_extension.dart';

class DatePickerFormWidget extends StatelessWidget {
  const DatePickerFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Creation date',
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
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'July 24',
                      style: TextStyle(
                        color: AppColors.greyColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Icon(
                      Icons.calendar_month_outlined,
                      color: AppColors.accentColor,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 24.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Due date',
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
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'July 30',
                      style: TextStyle(
                        color: AppColors.greyColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Icon(
                      Icons.calendar_month_outlined,
                      color: AppColors.accentColor,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
