abstract class InternetStates {}

class InternetInitialState extends InternetStates {}

class InternetConnectState extends InternetStates {
  final String message;

  InternetConnectState({required this.message});
}

class InternetNotConnectState extends InternetStates {
  final String message;

  InternetNotConnectState({required this.message});
}

