import 'package:go_router/go_router.dart';
import 'package:qoutes/Features/favorite/presentation/favorite.dart';
import 'package:qoutes/Features/home/presentaion/home.dart';

abstract class AppRouter {
  static const kHomeView = "/";
  static const kFavoriteView = "/FavoriteViewView";

  static final router = GoRouter(routes: <RouteBase>[
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: kFavoriteView,
      builder: (context, state) => const FavoriteView(),
    ),
  ]);
}
