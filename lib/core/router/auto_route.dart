import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../features/create_wish/create_wish_page.dart';
import '../../features/topics_board/topics_board_page.dart';
import '../../features/wishes_board/wishes_board_page.dart';
import '../models/wish_list.dart';

part 'auto_route.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute<dynamic>(page: TopicsBoardPage, initial: true, path: '/'),
    AutoRoute<dynamic>(page: WishesBoardPage, path: '/wish/:topic'),
    AutoRoute<dynamic>(page: CreateWishPage, path: '/create'),
  ],
)
class AppRouter extends _$AppRouter {}
