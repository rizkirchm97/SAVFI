import 'package:equatable/equatable.dart';

abstract class SplashScreenState extends Equatable {
  final int duration;

  const SplashScreenState(this.duration);

  @override
  List<Object?> get props => [duration];
}

class InitialSplashScreenState extends SplashScreenState {

  const InitialSplashScreenState(int duration) : super(duration);

  @override
  String toString() => 'Splash Initial : $duration';

}

class PauseSplashScreenState extends SplashScreenState {

  const PauseSplashScreenState(int duration) : super(duration);

  @override
  String toString() => 'Splash Paused : $duration';

}

class InProgressSplashScreenState extends SplashScreenState {

  const InProgressSplashScreenState(int duration) : super(duration);

  @override
  String toString() => 'Splash In Progress : $duration';

}

class CompleteSplashScreenState extends SplashScreenState {

  const CompleteSplashScreenState() : super(0);

  @override
  String toString() => 'Splash Complete : $duration';

}