
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:savfi/features/dashboard/presentation/bloc/dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit(): super(InitialDashboardState());

}