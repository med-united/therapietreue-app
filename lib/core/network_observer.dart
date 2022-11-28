import 'package:flutter_riverpod/flutter_riverpod.dart';

final networkObserverProvider =
    StateNotifierProvider((ref) => NetworkObserver());

enum NetworkState { Connected, Reconnecting, Disconnected }

class NetworkObserver extends StateNotifier<NetworkState> {
  NetworkObserver() : super(NetworkState.Connected) {
    startListeners();
  }

  void startListeners() {}

  void setDisconnected() {
    state = NetworkState.Disconnected;
  }

  void reconnected() {
    state = NetworkState.Reconnecting;

    //TODO retry connection
  }
}
