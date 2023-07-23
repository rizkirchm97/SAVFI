import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savfi/features/dashboard/presentation/bloc/dashboard_cubit.dart';
import 'package:savfi/features/dashboard/presentation/bloc/dashboard_state.dart';
import 'package:savfi/route/routes_imports.gr.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  /// The Page Views should be
  /// [Home, Note and Track, Notification, Profile]

  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  _buildBody() {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        return AutoTabsRouter.pageView(
          routes: const [
            HomeRoute(),
            NoteAndTrackRoute(),
            NotificationRoute(),
            ProfileRoute(),
          ],
          builder: (context, child, _) {
            final tabsRouter = AutoTabsRouter.of(context);
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.yellow,
                  titleTextStyle: GoogleFonts.poppins(
                    color: Colors.black
                  ),
                  title: Text(context.topRoute.name.replaceAll('Route', '')),
                  leading: const AutoLeadingButton()),
              body: child,
              bottomNavigationBar: BottomNavigationBar(
                showSelectedLabels: false,
                showUnselectedLabels: false,
                selectedItemColor: Colors.black,
                type: BottomNavigationBarType.fixed,
                currentIndex: tabsRouter.activeIndex,
                onTap: tabsRouter.setActiveIndex,
                items: const [
                  BottomNavigationBarItem(label: '', icon: Icon(Icons.home_outlined), activeIcon: Icon(Icons.home)),
                  BottomNavigationBarItem(label: '', icon: Icon(Icons.map_outlined), activeIcon: Icon(Icons.map)),
                  BottomNavigationBarItem(label: '', icon: Icon(Icons.notifications_outlined), activeIcon: Icon(Icons.notifications)),
                  BottomNavigationBarItem(label: '', icon: Icon(Icons.person_outline), activeIcon: Icon(Icons.person)),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
