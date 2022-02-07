import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:wishey/core/models/error_prone.dart';
import 'package:wishey/core/models/failure.dart';
import 'package:wishey/core/models/sucess.dart';
import 'package:wishey/core/models/wish_list.dart';
import 'package:wishey/core/repositories/wishes_repository_impl.dart';
import 'package:wishey/core/util/app_config.dart';

import 'wishes_repository_impl_test.mocks.dart';

const _fakeAddress = 'localhost:8080';
const _fakeGetWishesRoute = '/';
const _fakeHeaders = <String, String>{};

const _fakeWish = Wish(topic: 'topic', title: 'title');
const _fakeWishlist = WishList(
  wishes: [_fakeWish, Wish(topic: 'topic1', title: 'title1')],
);

const _fakeSuccess = Success();

const _serverFailure = Failure.server();
const _duplicateFailure = Failure.duplicate();

final _bakedUri = Uri.http(_fakeAddress, _fakeGetWishesRoute);

@GenerateMocks([http.Client, AppConfig, http.Response])
void main() {
  late MockClient _client;
  late WishesRepositoryImpl _wishesRepository;
  late MockAppConfig _appConfig;
  late MockResponse _response;

  setUp(
    () {
      _appConfig = MockAppConfig();
      _client = MockClient();
      when(_appConfig.apiServerAddress).thenReturn(_fakeAddress);
      when(_appConfig.getWishesRoute).thenReturn(_fakeGetWishesRoute);
      when(_appConfig.postWishRoute).thenReturn(_fakeGetWishesRoute);
      when(_appConfig.httpHeaders).thenReturn(_fakeHeaders);
      when(
        _client.get(_bakedUri, headers: _fakeHeaders),
      ).thenAnswer(
        (_) async => _response,
      );
      when(
        _client.post(
          _bakedUri,
          headers: _fakeHeaders,
          body: jsonEncode(_fakeWish.toJson()),
        ),
      ).thenAnswer(
        (_) async => _response,
      );
      _response = MockResponse();
      _wishesRepository = WishesRepositoryImpl(_client, _appConfig);
    },
  );

  group(
    'WishesRepositoryImpl tests',
    () {
      test(
        'GIVEN getWishlist is called\n'
        'WHEN there is no error\n'
        'THEN should return success',
        () async {
          when(_response.statusCode).thenReturn(200);
          when(_response.body).thenReturn(jsonEncode(_fakeWishlist.toJson()));

          final wishList = await _wishesRepository.getWishlist();

          expect(wishList, ErrorProne.success(_fakeWishlist));
          verify(_response.statusCode).called(1);
          verify(_response.body).called(1);
          verifyNoMoreInteractions(_response);
          verify(_client.get(_bakedUri, headers: _fakeHeaders)).called(1);
          verifyNoMoreInteractions(_client);
        },
      );

      test(
        'GIVEN getWishlist is called\n'
        'WHEN there is error\n'
        'THEN should return failure',
        () async {
          when(_response.statusCode).thenReturn(500);

          final wishList = await _wishesRepository.getWishlist();

          expect(wishList, ErrorProne.failure(_serverFailure));
          verify(_response.statusCode).called(1);
          verifyNever(_response.body);
          verifyNoMoreInteractions(_response);
          verify(_client.get(_bakedUri, headers: _fakeHeaders)).called(1);
          verifyNoMoreInteractions(_client);
        },
      );

      test(
        'GIVEN saveWish is called\n'
        'WHEN there is no error\n'
        'THEN should return success',
        () async {
          when(_response.statusCode).thenAnswer((_) => 200);

          final wishList = await _wishesRepository.saveWish(_fakeWish);

          expect(wishList, ErrorProne.success(_fakeSuccess));
          verify(_response.statusCode).called(1);
          verifyNever(_response.body);
          verifyNoMoreInteractions(_response);
          verify(
            _client.post(
              _bakedUri,
              headers: _fakeHeaders,
              body: jsonEncode(_fakeWish.toJson()),
            ),
          ).called(1);
          verifyNoMoreInteractions(_client);
        },
      );

      test(
        'GIVEN saveWish is called\n'
        'WHEN there is error 409\n'
        'THEN should return failure',
        () async {
          when(_response.statusCode).thenReturn(409);

          final wishList = await _wishesRepository.saveWish(_fakeWish);

          expect(wishList, ErrorProne.failure(_duplicateFailure));
          verify(_response.statusCode).called(1);
          verifyNever(_response.body);
          verifyNoMoreInteractions(_response);
          verify(
            _client.post(
              _bakedUri,
              headers: _fakeHeaders,
              body: jsonEncode(_fakeWish.toJson()),
            ),
          ).called(1);
          verifyNoMoreInteractions(_client);
        },
      );

      test(
        'GIVEN saveWish is called\n'
        'WHEN there is error\n'
        'THEN should return failure',
        () async {
          when(_response.statusCode).thenReturn(500);

          final wishList = await _wishesRepository.saveWish(_fakeWish);

          expect(wishList, ErrorProne.failure(_serverFailure));
          verify(_response.statusCode).called(1);
          verifyNever(_response.body);
          verifyNoMoreInteractions(_response);
          verify(
            _client.post(
              _bakedUri,
              headers: _fakeHeaders,
              body: jsonEncode(_fakeWish.toJson()),
            ),
          ).called(1);
          verifyNoMoreInteractions(_client);
        },
      );
    },
  );
}
