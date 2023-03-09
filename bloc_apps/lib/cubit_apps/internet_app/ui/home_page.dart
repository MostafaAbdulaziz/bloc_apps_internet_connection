import 'package:bloc_app/blocs_App/connection_Interner_App/internet_ui/textApp.dart';
import 'package:bloc_app/cubit_apps/internet_app/internet_cubit/internet_cubit.dart';
import 'package:bloc_app/cubit_apps/internet_app/internet_cubit/internet_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(
        title: const TextApp(text: 'Home'),
        centerTitle: true,
        backgroundColor: Colors.white24,
      ),
      body:  Center(
        child: BlocBuilder<InternetHomeCubit, InternetHomeStates>(
            builder: (context, state) {
              if(state is ConnectedHomePage){
               return  setResultCheck(text: state.message);
              }else if(state is NotConnectedHomePage){
                return setResultCheck(text: state.message);
              }else{
                return setResultCheck(text: 'Not Connected');
              }
            }
        ),
      ),
    );
  }
}

TextApp setResultCheck({required String text}) => TextApp(text: text);
