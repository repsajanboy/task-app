import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/presentation/bottom_tab/bloc/bottom_tab_bloc.dart';

import '../../../routing/app_router_names.dart';
import '../../../style/colors.dart';
import '../../calendar/calendar.dart';
import '../../profile/profile.dart';
import '../../tasks/task_list.dart';
import '../bloc/bottom_tab_item.dart';
import '../bloc/bottom_tab_item_type.dart';
import '../../dashboard/dashboard.dart';

class BottomNavBarPage extends StatefulWidget {
  final int currIndex;
  const BottomNavBarPage({super.key, required this.currIndex});

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              BottomTabBloc()..add(InitialBottomTab(widget.currIndex)),
        ),
      ],
      child: BlocBuilder<BottomTabBloc, BottomTabState>(
        builder: (context, state) {
          if (state is CreateBottomTab) {
            return _buildTab(context, state);
          } else {
            return Container();
          }
        },
      ),
    );
  }

  Widget _buildTab(BuildContext context, CreateBottomTab state) {
    final items = state.items.map((type) => _getItem(type));
    return Scaffold(
      backgroundColor: AppColors.background,
      body: IndexedStack(
        index: state.currentIndex,
        children: items.map((e) => e.page).toList(),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(left: 24, top: 24, right: 24, bottom: 12),
        decoration: const BoxDecoration(
          color: AppColors.widgetBackground,
          borderRadius: BorderRadius.all(Radius.circular(16)),
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
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(8.0)),
          child: BottomNavigationBar(
            backgroundColor: AppColors.widgetBackground,
            elevation: 10,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: state.currentIndex,
            onTap: (int index) {
              if (index == 2) {
                Navigator.pushNamed(context, RouteNames.createTask);
              }
              BlocProvider.of<BottomTabBloc>(context)
                  .add(BottomTabChanged(index));
            },
            items: items
                .map((e) => BottomNavigationBarItem(
                    icon: e.icon, label: e.title, activeIcon: e.activeIcon))
                .toList(),
          ),
        ),
      ),
      // floatingActionButtonLocation:
      //     FloatingActionButtonLocation.endContained,
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.indigoAccent,
      //   onPressed: () {},
      //   child: const Icon(Icons.add),
      // ),
    );
  }

  BottomTabItem _getItem(BottomTabItemType type) {
    switch (type) {
      case BottomTabItemType.dashboard:
        return BottomTabItem(
          page: const DashboardPage(),
          title: '',
          icon: const Icon(
            Icons.widgets_rounded,
            color: AppColors.bottomNavItemColor,
          ),
          activeIcon: const Icon(
            Icons.widgets_rounded,
            color: AppColors.bottomNavItemActiveColor,
          ),
        );
      case BottomTabItemType.tasks:
        return BottomTabItem(
          page: const TaskListPage(),
          title: '',
          icon: const Icon(
            Icons.assignment_rounded,
            color: AppColors.bottomNavItemColor,
          ),
          activeIcon: const Icon(
            Icons.assignment_rounded,
            color: AppColors.bottomNavItemActiveColor,
          ),
        );
      case BottomTabItemType.add:
        return BottomTabItem(
          page: const SizedBox(),
          title: '',
          icon: const CircleAvatar(
            backgroundColor: AppColors.accentColor,
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 32,
            ),
          ),
          activeIcon: const Icon(Icons.add),
        );
      case BottomTabItemType.calendar:
        return BottomTabItem(
          page: const CalendarPage(),
          title: '',
          icon: const Icon(
            Icons.date_range_rounded,
            color: AppColors.bottomNavItemColor,
          ),
          activeIcon: const Icon(
            Icons.date_range_rounded,
            color: AppColors.bottomNavItemActiveColor,
          ),
        );
      case BottomTabItemType.profile:
        return BottomTabItem(
          page: const ProfilePage(),
          title: '',
          icon: const Icon(
            Icons.person_rounded,
            color: AppColors.bottomNavItemColor,
          ),
          activeIcon: const Icon(
            Icons.person_rounded,
            color: AppColors.bottomNavItemActiveColor,
          ),
        );
      default:
        return BottomTabItem(
          page: const SizedBox(),
          title: '',
          icon: const SizedBox(),
          activeIcon: const SizedBox(),
        );
    }
  }
}
