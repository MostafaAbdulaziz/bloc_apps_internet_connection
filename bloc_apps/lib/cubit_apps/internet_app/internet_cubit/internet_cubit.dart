import 'dart:async';

import 'package:bloc_app/cubit_apps/internet_app/internet_cubit/internet_states.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InternetHomeCubit extends Cubit<InternetHomeStates> {
  StreamSubscription? subscription;

  InternetHomeCubit() : super(InitialHomePage());

  void checkConnection() {
    subscription = Connectivity().onConnectivityChanged.listen((result) {
      if (result == ConnectivityResult.wifi ||
          result == ConnectivityResult.mobile) {
        emit(ConnectedHomePage(message: "Connected"));
      }else{
        emit(NotConnectedHomePage(message: "Not Connected"));
      }
    });
  }
}
