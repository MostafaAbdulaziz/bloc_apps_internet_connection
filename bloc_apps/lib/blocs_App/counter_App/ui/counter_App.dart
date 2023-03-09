import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../counter_bloc/counter_bloc.dart';
import '../counter_bloc/counter_states.dart';
import 'floating_BtnS.dart';

class CounterApp extends StatelessWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Counter",
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          BlocBuilder<CounterBloc,CounterStates>(
            builder: (context,state){
              if(state is CounterActionState){
                return Text(
                  state.counter.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: Colors.white),
                  textAlign: TextAlign.center,
                );
              }else{
                return Text(
                  "0",
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: Colors.white),
                  textAlign: TextAlign.center,
                );
              }
            },
          )
        ],
      ),
      floatingActionButton: const FloatingBtnSApp(),
    );
  }
}
