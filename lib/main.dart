//? CodeWithFlexz on Instagram
//* AmirBayat0 on Github
//! Programming with Flexz on Youtube

import 'package:flutter/material.dart';
import 'data/task_data_store.dart';
import 'view/home_view.dart';
import 'utils/colors.dart';
import 'utils/strings.dart';

void main() {
  runApp(const MyApp());
}

// This provider makes task data available throughout the app
class TaskProvider extends InheritedNotifier<TaskDataStore> {
  const TaskProvider({
    Key? key,
    required TaskDataStore dataStore,
    required Widget child,
  }) : super(key: key, notifier: dataStore, child: child);

  static TaskDataStore of(BuildContext context) {
    final provider = context.dependOnInheritedWidgetOfExactType<TaskProvider>();
    if (provider == null) {
      throw Exception('TaskProvider not found');
    }
    return provider.notifier!;
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return TaskProvider(
      dataStore: TaskDataStore(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppStrings.appTitle,
        theme: ThemeData(
          primaryColor: AppColors.primary,
          scaffoldBackgroundColor: AppColors.background,

          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.white,
            elevation: 0,
            iconTheme: IconThemeData(color: AppColors.textDark),
            titleTextStyle: TextStyle(
              color: AppColors.textDark,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),

          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: AppColors.primary,
            foregroundColor: Colors.white,
          ),

          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        ),
        home: const HomeView(),
      ),
    );
  }
}
