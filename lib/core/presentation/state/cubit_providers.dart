import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_track/core/di/di_config.dart';
import 'package:task_track/feature/news/domain/usecases/get_news.dart';
import 'package:task_track/feature/news/presentation/state/news_cubit.dart';
import 'package:task_track/feature/task/presentation/state/task_cubit.dart';

final cubitProviders = [
  BlocProvider<NewsCubit>(
    create: (_) => NewsCubit(inject<GetNews>()),
  ),
  BlocProvider<TaskCubit>(
    create: (_) => TaskCubit(inject(), inject(), inject()),
  ),
];
