import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:bloc_app/blocs_App/connection_Interner_App/internet_Bloc/internet_Events.dart';
import 'package:bloc_app/blocs_App/connection_Interner_App/internet_Bloc/internet_States.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class InternetBloc extends Bloc<InternetEvents, InternetStates> {
  StreamSubscription? subscription;

  InternetBloc() : super(InternetInitialState()) {
    on<InternetEvents>((event, emit) => {
          if (event is ConnectedEvent)
            {emit(InternetConnectState(message: 'Connected'))}
          else if (event is NotConnectedEvent)
            {emit(InternetNotConnectState(message: 'Not Connected'))}
        });
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      if (result == ConnectivityResult.wifi ||
          result == ConnectivityResult.mobile) {
        add(ConnectedEvent());
      } else {
        add(NotConnectedEvent());
      }
    });
  }
  @override
  Future<void> close() {
    subscription!.cancel();
    return super.close();
  }
}


