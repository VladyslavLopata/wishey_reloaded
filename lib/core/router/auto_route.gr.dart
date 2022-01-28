// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../features/create_wish/create_wish_page.dart' as _i3;
import '../../features/topics_board/topics_board_page.dart' as _i1;
import '../../features/wishes_board/wishes_board_page.dart' as _i2;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    TopicsBoardRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.TopicsBoardPage());
    },
    WishesBoardRoute.name: (routeData) {
      final args = routeData.argsAs<WishesBoardRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.WishesBoardPage(key: args.key, topic: args.topic));
    },
    CreateWishRoute.name: (routeData) {
      final args = routeData.argsAs<CreateWishRouteArgs>(
          orElse: () => const CreateWishRouteArgs());
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.CreateWishPage(key: args.key, topic: args.topic));
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(TopicsBoardRoute.name, path: '/'),
        _i4.RouteConfig(WishesBoardRoute.name, path: '/wish/:topic'),
        _i4.RouteConfig(CreateWishRoute.name, path: '/create')
      ];
}

/// generated route for
/// [_i1.TopicsBoardPage]
class TopicsBoardRoute extends _i4.PageRouteInfo<void> {
  const TopicsBoardRoute() : super(TopicsBoardRoute.name, path: '/');

  static const String name = 'TopicsBoardRoute';
}

/// generated route for
/// [_i2.WishesBoardPage]
class WishesBoardRoute extends _i4.PageRouteInfo<WishesBoardRouteArgs> {
  WishesBoardRoute({_i5.Key? key, required String topic})
      : super(WishesBoardRoute.name,
            path: '/wish/:topic',
            args: WishesBoardRouteArgs(key: key, topic: topic));

  static const String name = 'WishesBoardRoute';
}

class WishesBoardRouteArgs {
  const WishesBoardRouteArgs({this.key, required this.topic});

  final _i5.Key? key;

  final String topic;

  @override
  String toString() {
    return 'WishesBoardRouteArgs{key: $key, topic: $topic}';
  }
}

/// generated route for
/// [_i3.CreateWishPage]
class CreateWishRoute extends _i4.PageRouteInfo<CreateWishRouteArgs> {
  CreateWishRoute({_i5.Key? key, String topic = ''})
      : super(CreateWishRoute.name,
            path: '/create', args: CreateWishRouteArgs(key: key, topic: topic));

  static const String name = 'CreateWishRoute';
}

class CreateWishRouteArgs {
  const CreateWishRouteArgs({this.key, this.topic = ''});

  final _i5.Key? key;

  final String topic;

  @override
  String toString() {
    return 'CreateWishRouteArgs{key: $key, topic: $topic}';
  }
}
