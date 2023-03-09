import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../counter_bloc/counter_bloc.dart';
import '../counter_bloc/counter_events.dart';
import 'floating_Btn.dart';

class FloatingBtnSApp extends StatelessWidget {
  const FloatingBtnSApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FloatingBtn(
            icon: Icons.add_circle,
            onPressed: () {
              BlocProvider.of<CounterBloc>(context).add(IncrementCounterEvent());
            }),
        buildHeightBetBtnS(),
        FloatingBtn(
            icon: Icons.minimize,
            onPressed: () {
              BlocProvider.of<CounterBloc>(context).add(DecrementCounterEvent());
            }),
        buildHeightBetBtnS(),
        FloatingBtn(
            icon: Icons.change_circle_outlined,
            onPressed: () {
              BlocProvider.of<CounterBloc>(context).add(ResetCounterEvent());
            }),
      ],
    );
  }
}

SizedBox buildHeightBetBtnS()=>const SizedBox(height: 22,);
