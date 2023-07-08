import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_app/presentation/bottom_tab/bloc/bottom_tab_bloc.dart';

import '../bloc/bottom_tab_item.dart';
import '../bloc/bottom_tab_item_type.dart';

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
      body: const Center(
        child: Text('Dashboard'),
      ),
      bottomNavigationBar: DecoratedBox(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: BottomNavigationBar(
            backgroundColor: Colors.white,
            elevation: 10,
            type: BottomNavigationBarType.fixed,
            onTap: (int index) {
              BlocProvider.of<BottomTabBloc>(context)
                  .add(BottomTabChanged(index));
            },
            items: items
                .map((e) => BottomNavigationBarItem(
                    icon: e.icon, label: e.title, activeIcon: e.activeIcon))
                .toList()),
      ),
    );
  }

  BottomTabItem _getItem(BottomTabItemType type) {
    switch (type) {
      case BottomTabItemType.dashboard:
        return BottomTabItem(
            page: const Text('Dashboard'),
            title: '',
            icon: const Icon(Icons.dashboard),
            activeIcon: const Icon(Icons.dashboard));
      case BottomTabItemType.tasks:
        return BottomTabItem(
            page: const Text('Tasks'),
            title: '',
            icon: const Icon(Icons.list),
            activeIcon: const Icon(Icons.list));
      case BottomTabItemType.calendar:
        return BottomTabItem(
            page: const Text('Calendar'),
            title: '',
            icon: const Icon(Icons.calendar_month),
            activeIcon: const Icon(Icons.calendar_month));
      case BottomTabItemType.profile:
        return BottomTabItem(
            page: const Text('Profile'),
            title: '',
            icon: const Icon(Icons.account_circle_outlined),
            activeIcon: const Icon(Icons.account_circle_outlined));
      default:
        return BottomTabItem(
            page: const SizedBox(),
            title: '',
            icon: const SizedBox(),
            activeIcon: const SizedBox());
    }
  }
}
