import 'dart:async';
import 'dart:io';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:task_track/core/di/di_config.dart';
import 'package:task_track/core/presentation/state/cubit_providers.dart';
import 'package:task_track/feature/news/presentation/state/news_cubit.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:task_track/feature/task/presentation/pages/task_view.dart';

import 'core/platform/env_config.dart';
import 'core/platform/string_constants.dart';
import 'feature/news/presentation/pages/news_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlavorConfig(
      flavor: Flavor.PRODUCTION,
      values: FlavorValues(baseUrl: AppString.BASE_URL));

  Firebase.initializeApp();
  await Hive.initFlutter();
  await initInjectors();

  await runZoned<Future<Null>>(() async {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) => MultiBlocProvider(
        providers: cubitProviders,
        child: MaterialApp(
          home: IndexPage(),
          debugShowCheckedModeBanner: false,
        ),
      );
}

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [
      NewsView(),
      TaskView(),
      TaskView(
        isCompletedTask: true,
      )
    ];

    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: children,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'All Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check),
            label: 'Completed Tasks',
          ),
        ],
      ),
    );
  }
}
