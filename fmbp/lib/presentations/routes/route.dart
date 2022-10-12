import 'package:flutter/material.dart';

import '../screen/login/index.dart';


final Map<String, WidgetBuilder> routes = {
  LoginScreen.routeName: (context) => const LoginScreen(),
  // //Main
  // MainScreen.routeName: (context) => const MainScreen(),
  // HomeScreen.routeName: (context) => const HomeScreen(),
  // ActivityScreen.routeName: (context) => const ActivityScreen(),
  // InboxScreen.routeName: (context) => const InboxScreen(),
  // //activity
  // //Profile
  // ProfileScreen.routeName: (context) => const ProfileScreen(),
  // MyAccountScreen.routeName: (context) => const MyAccountScreen(),
  // //Screen
  // //inspection
  // CheckListWithTodoScreen.routeName: (context) =>
  //     const CheckListWithTodoScreen(),
  // CheckListScreen.routeName: (context) => const CheckListScreen(),
  // CheckListQCScreen.routeName: (context) => const CheckListQCScreen(),
  // CheckListTechnicalScreen.routeName: (context) =>
  //     const CheckListTechnicalScreen(),

  // //Notification - Announcements
  // // DetailAnnouncement.routeName: (context) => const DetailAnnouncement(),
  // //Todo List
  // ToDoListScreen.routeName: (context) => const ToDoListScreen(),
  // SettingScreen.routeName: (context) => const SettingScreen(),
};
