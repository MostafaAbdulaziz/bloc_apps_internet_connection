
import 'package:bloc/bloc.dart';

import 'counter_events.dart';
import 'counter_states.dart';

class CounterBloc extends Bloc<CounterEvents,CounterStates>{
  int counter=0;
  CounterBloc():super(InitialCounterState()){
    on((event, emit) {
      if(event is IncrementCounterEvent){
        counter++;
        emit(CounterActionState(counter: counter));
      }else if (event is DecrementCounterEvent){
        emit(CounterActionState(counter: counter));
        counter--;
      }else{
        emit(CounterActionState(counter: counter));
        counter=0;
      }
    });
  }
}