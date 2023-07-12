part of 'routes_imports.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRouteRoute.page, initial: true),
        CustomRoute(
          page: LoginRoute.page,
          transitionsBuilder: TransitionsBuilders.slideBottom,
          durationInMilliseconds: 600,
        ),
        AutoRoute(page: RegisterRoute.page),
        AutoRoute(page: OtpRoute.page),
      ];
}
