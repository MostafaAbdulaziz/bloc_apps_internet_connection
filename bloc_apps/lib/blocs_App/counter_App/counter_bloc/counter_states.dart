

abstract class CounterStates{}
class InitialCounterState extends CounterStates{}
class CounterActionState extends CounterStates{
  final int counter;
  CounterActionState({required this.counter});
}