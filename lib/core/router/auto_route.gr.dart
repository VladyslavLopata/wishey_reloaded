// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'auto_route.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    TopicsBoardRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const TopicsBoardPage());
    },
    WishesBoardRoute.name: (routeData) {
      final args = routeData.argsAs<WishesBoardRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: WishesBoardPage(key: args.key, topic: args.topic));
    },
    CreateWishRoute.name: (routeData) {
      final args = routeData.argsAs<CreateWishRouteArgs>(
          orElse: () => const CreateWishRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: CreateWishPage(
              key: args.key,
              shouldReplaceExisting: args.shouldReplaceExisting,
              wish: args.wish));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(TopicsBoardRoute.name, path: '/'),
        RouteConfig(WishesBoardRoute.name, path: '/wish/:topic'),
        RouteConfig(CreateWishRoute.name, path: '/create')
      ];
}

/// generated route for
/// [TopicsBoardPage]
class TopicsBoardRoute extends PageRouteInfo<void> {
  const TopicsBoardRoute() : super(TopicsBoardRoute.name, path: '/');

  static const String name = 'TopicsBoardRoute';
}

/// generated route for
/// [WishesBoardPage]
class WishesBoardRoute extends PageRouteInfo<WishesBoardRouteArgs> {
  WishesBoardRoute({Key? key, required String topic})
      : super(WishesBoardRoute.name,
            path: '/wish/:topic',
            args: WishesBoardRouteArgs(key: key, topic: topic));

  static const String name = 'WishesBoardRoute';
}

class WishesBoardRouteArgs {
  const WishesBoardRouteArgs({this.key, required this.topic});

  final Key? key;

  final String topic;

  @override
  String toString() {
    return 'WishesBoardRouteArgs{key: $key, topic: $topic}';
  }
}

/// generated route for
/// [CreateWishPage]
class CreateWishRoute extends PageRouteInfo<CreateWishRouteArgs> {
  CreateWishRoute(
      {Key? key,
      bool shouldReplaceExisting = false,
      Wish wish = const Wish(title: '', topic: '')})
      : super(CreateWishRoute.name,
            path: '/create',
            args: CreateWishRouteArgs(
                key: key,
                shouldReplaceExisting: shouldReplaceExisting,
                wish: wish));

  static const String name = 'CreateWishRoute';
}

class CreateWishRouteArgs {
  const CreateWishRouteArgs(
      {this.key,
      this.shouldReplaceExisting = false,
      this.wish = const Wish(title: '', topic: '')});

  final Key? key;

  final bool shouldReplaceExisting;

  final Wish wish;

  @override
  String toString() {
    return 'CreateWishRouteArgs{key: $key, shouldReplaceExisting: $shouldReplaceExisting, wish: $wish}';
  }
}
