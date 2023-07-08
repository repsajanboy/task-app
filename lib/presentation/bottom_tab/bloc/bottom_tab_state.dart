part of 'bottom_tab_bloc.dart';

@immutable
abstract class BottomTabState {}

class BottomTabInitial extends BottomTabState {}

class CreateBottomTab extends BottomTabState {
  final int currentIndex;
  final List<BottomTabItemType> items;

  CreateBottomTab({required this.currentIndex, required this.items});
}