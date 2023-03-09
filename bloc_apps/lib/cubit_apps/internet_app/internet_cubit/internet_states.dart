import 'package:bloc_app/blocs_App/connection_Interner_App/internet_Bloc/internet_States.dart';

abstract class InternetHomeStates {}

class InitialHomePage extends InternetHomeStates {}

class ConnectedHomePage extends InternetHomeStates {
  final String message;
  ConnectedHomePage({required this.message});
}

class NotConnectedHomePage extends InternetHomeStates {
  final String message;
  NotConnectedHomePage({required this.message});
}
