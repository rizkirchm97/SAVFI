import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:savfi/features/splashscreen/presentation/bloc/splash_screen_state.dart';
import 'dart:async';

import '../../../../core/helper/ticker.dart';

class SplashScreenCubit extends Cubit<SplashScreenState> {
  final Ticker? _ticker;
  static const int _duration = 60;

  StreamSubscription<int>? _streamSubscription;

  SplashScreenCubit({Ticker? ticker})
      : _ticker = ticker,
        super(const InitialSplashScreenState(_duration));

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }

  Future<void> startSplash(int durationInSecond) async {
    emit(InProgressSplashScreenState(durationInSecond));
    _streamSubscription =
        _ticker?.tick(ticks: durationInSecond).listen((duration) {
          print(duration.toString());
          startTickerSplash(duration);
    });
  }

  Future<void> pausedSplash() async {
    if (state is InProgressSplashScreenState) {
      _streamSubscription?.pause();
      emit(PauseSplashScreenState(state.duration));
    }
  }

  Future<void> resumeSplash() async {
    if (state is PauseSplashScreenState) {
      _streamSubscription?.resume();
      emit(InProgressSplashScreenState(state.duration));
    }
  }

  Future<void> resetSplash() async {
    await _streamSubscription?.cancel();
    emit(const InitialSplashScreenState(_duration));
  }

  Future<void> startTickerSplash(int duration) async {
    print('InProgressOrComplete : ${duration > 0 ? InProgressSplashScreenState(duration) : const CompleteSplashScreenState()}');
    if (duration > 0) {
      emit(InProgressSplashScreenState(duration));
    } else {
      emit(const CompleteSplashScreenState());
    }
    // emit(duration > 0 ? InProgressSplashScreenState(duration) : const CompleteSplashScreenState());
  }
}
