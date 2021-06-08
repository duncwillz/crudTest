import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_track/feature/task/data/model/task_model.dart';
import 'package:task_track/feature/task/presentation/state/task_cubit.dart';
import 'package:uuid/uuid.dart';

class TaskForm extends StatefulWidget {
  final TaskModel task;
  TaskForm({this.task});
  @override
  _TaskFormState createState() => _TaskFormState(task);
}

class _TaskFormState extends State<TaskForm> {
  static const double _padding = 16;

  _TaskFormState(this.task);

  TaskModel task;
  TextEditingController _titleController;
  TextEditingController _descriptionController;
  bool completed;

  void init() {
    if (task == null) {
      task = TaskModel();
      _titleController = TextEditingController();
      _descriptionController = TextEditingController();
      completed = false;
    } else {
      _titleController = TextEditingController(text: task.title);
      _descriptionController = TextEditingController(text: task.description);
      completed = widget.task.dateCompleted != null;
    }
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  void _save(BuildContext context) {
    if (widget.task == null) {
      task = TaskModel(
          id: Uuid().v4(),
          title: _titleController.text,
          description: _descriptionController.text,
          dateCompleted: completed ? DateTime.now() : null);
      context.read<TaskCubit>().add(task);
    } else {
      _update();
    }
    Navigator.of(context).pop();
  }

  void _update() {
    task = widget.task.copyWith(
        title: _titleController.text,
        description: _descriptionController.text,
        dateCompleted: completed ? DateTime.now() : null);
    context.read<TaskCubit>().update(task);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        widget.task == null ? "Add task" : widget.task.title,
      )),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(_padding),
          child: Column(
            children: [
              TextField(
                controller: _titleController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Title',
                ),
              ),
              SizedBox(height: _padding),
              TextField(
                controller: _descriptionController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Description',
                ),
                minLines: 5,
                maxLines: 10,
              ),
              SizedBox(height: _padding),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Completed ?'),
                  CupertinoSwitch(
                    value: completed,
                    onChanged: (val) {
                      setState(() {
                        completed = val;
                      });
                    },
                  ),
                ],
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () => _save(context),
                child: Container(
                  width: double.infinity,
                  child: Center(
                      child: Text(widget.task == null ? 'Create' : 'Update')),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
