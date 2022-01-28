import 'package:auto_route/auto_route.dart';
import 'package:wishey/features/create_wish/create_wish_page.dart';
import 'package:wishey/features/topics_board/topics_board_page.dart';
import 'package:wishey/features/wishes_board/wishes_board_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: TopicsBoardPage, initial: true, path: '/'),
    AutoRoute(page: WishesBoardPage, path: '/wish/:topic'),
    AutoRoute(page: CreateWishPage, path: '/create'),
  ],
)
class $AppRouter {}
