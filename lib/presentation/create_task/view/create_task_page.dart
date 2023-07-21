import 'package:flutter/material.dart';

import '../../../utils/extensions/context_extension.dart';
import '../../../style/colors.dart';
import 'widgets/category_picker_widget.dart';
import 'widgets/date_picker_form_widget.dart';
import 'widgets/description_form_widget.dart';
import 'widgets/time_form_widget.dart';
import 'widgets/title_form_widget.dart';

class CreateTaskPage extends StatelessWidget {
  const CreateTaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(color: AppColors.mainColor),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text('New Task', style: context.typo.dashboardTitle(),),
      ),
      floatingActionButton: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        width: double.infinity,
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.orangeAccent,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0))
          ),
          child: const Text(
            'Create Task'
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 4.0),
        child: Column(
          children: [
            TitleFormWidget(),
            SizedBox(height: 32,),
            DescriptionFormWidget(),
            SizedBox(height: 32,),
            DatePickerFormWidget(),
            SizedBox(height: 32,),
            TimeFormWidget(),
            SizedBox(height: 32,),
            CategoryPickerWidget(),
          ],
        ),
      ),
    );
  }
}
