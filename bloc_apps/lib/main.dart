import 'package:bloc_app/blocs_App/connection_Interner_App/internet_Bloc/internet_Bloc.dart';
import 'package:bloc_app/blocs_App/connection_Interner_App/internet_ui/internet_Home_Screen.dart';
import 'package:bloc_app/cubit_apps/internet_app/internet_cubit/internet_cubit.dart';
import 'package:bloc_app/cubit_apps/internet_app/ui/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs_App/counter_App/counter_bloc/counter_bloc.dart';
import 'blocs_App/counter_App/ui/counter_App.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => InternetHomeCubit()..checkConnection(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Homepage(),
      ),
    );
  }
}
