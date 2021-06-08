import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_track/feature/task/data/model/task_model.dart';
import 'package:task_track/feature/task/presentation/pages/task_form.dart';
import 'package:task_track/feature/task/presentation/state/task_cubit.dart';

class TaskView extends StatefulWidget {
  final bool isCompletedTask;
  TaskView({this.isCompletedTask = false});
  @override
  _TaskViewState createState() => _TaskViewState();
}

class _TaskViewState extends State<TaskView> {
  void addTask(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TaskForm()),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.isCompletedTask ? "Completed Task" : "Task"),
        actions: widget.isCompletedTask
            ? null
            : [
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TaskForm()),
                    );
                  },
                  // onPressed: () => addTask(context),
                )
              ],
      ),
      body: BlocBuilder<TaskCubit, TaskState>(
        builder: (context, state) => state.maybeWhen(
            taskUpdated: (payload, error) => Container(
                  child: ListView(
                    children: widget.isCompletedTask
                        ? payload
                            .where((task) => task.dateCompleted != null)
                            .toList()
                            .map((task) => TaskTile(task))
                            .toList()
                        : payload.map((task) => TaskTile(task)).toList(),
                  ),
                ),
            orElse: () => SizedBox()),
      ),
    );
  }
}

class TaskTile extends StatelessWidget {
  final TaskModel task;
  TaskTile(this.task);

  bool get isCompleted => task.dateCompleted != null;

  void _delete(BuildContext context) {
    context.read<TaskCubit>().delete(task);
  }

  void _toggleComplete(BuildContext context) {
    TaskModel _task =
        task.copyWith(dateCompleted: !isCompleted ? DateTime.now() : null);
    context.read<TaskCubit>().update(_task);
  }

  void _view(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TaskForm(task: task)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
        icon: Icon(
          isCompleted ? Icons.check_box : Icons.check_box_outline_blank,
        ),
        onPressed: () => _toggleComplete(context),
      ),
      title: Text(task.title),
      subtitle: Text(task.description),
      trailing: IconButton(
        icon: Icon(
          Icons.delete,
        ),
        onPressed: () => _delete(context),
      ),
      onTap: () => _view(context),
    );
  }
}
