import 'package:bloc_app/blocs_App/connection_Interner_App/internet_Bloc/internet_Bloc.dart';
import 'package:bloc_app/blocs_App/connection_Interner_App/internet_Bloc/internet_States.dart';
import 'package:bloc_app/blocs_App/connection_Interner_App/internet_ui/textApp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InternetScreen extends StatelessWidget {
  const InternetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(
        title: const TextApp(text: 'Home'),
        centerTitle: true,
        backgroundColor: Colors.white24,
      ),
      body: Center(
        child: BlocBuilder<InternetBloc, InternetStates>(
            builder: (context, state) {
          if (state is InternetConnectState) {
            return TextApp(
              text: state.message,
            );
          } else if (state is InternetNotConnectState) {
            return TextApp(text: state.message);
          }
          return const TextApp(text: 'Not Connected');
        }),
      ),
    );
  }
}
