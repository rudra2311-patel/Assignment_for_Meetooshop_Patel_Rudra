import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../main.dart';
import '../models/task.dart';
import '../utils/colors.dart';
import '../utils/constanst.dart';
import '../utils/strings.dart';
import 'task_view.dart';
import 'task_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final dataStore = TaskProvider.of(context);

    return AnimatedBuilder(
      animation: dataStore,
      builder: (ctx, child) {
        var taskList = List<Task>.from(dataStore.tasks);
        taskList.sort((a, b) => a.createdAtDate.compareTo(b.createdAtDate));

        int completedTasks = 0;
        for (var task in taskList) {
          if (task.isCompleted) completedTasks++;
        }

        return Scaffold(
          backgroundColor: AppColors.background,
          appBar: AppBar(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(AppStrings.appTitle),
                Text(
                  '$completedTasks of ${taskList.length} completed',
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColors.textGrey,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.delete_sweep_rounded),
                onPressed: () {
                  if (dataStore.tasks.isEmpty) {
                    showNoTasksWarning(context);
                  } else {
                    showDeleteAllConfirmation(context);
                  }
                },
              ),
            ],
          ),
          body: taskList.isEmpty
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FadeIn(
                        child: SizedBox(
                          width: 200,
                          height: 200,
                          child: Lottie.asset(lottieAssetPath),
                        ),
                      ),
                      const SizedBox(height: 16),
                      FadeInUp(
                        from: 30,
                        child: const Text(
                          AppStrings.noTasks,
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.textGrey,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: taskList.length,
                  itemBuilder: (context, index) {
                    return TaskWidget(task: taskList[index]);
                  },
                ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const TaskView(task: null, title: null, note: null),
                ),
              );
            },
            child: const Icon(Icons.add, size: 32),
          ),
        );
      },
    );
  }
}
