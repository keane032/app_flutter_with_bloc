import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'login/login_screem.dart';
import 'package:newproject/src/app_bloc.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AppBloc>(
      bloc: AppBloc(),
      child: MaterialApp(
          title: 'TodoList',
        home: Scaffold(
          body: Login_screen(),
        )
      ),
    );
  }
}