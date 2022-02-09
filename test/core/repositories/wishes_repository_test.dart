import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:wishey/core/models/error_prone.dart';
import 'package:wishey/core/models/failure.dart';
import 'package:wishey/core/models/sucess.dart';
import 'package:wishey/core/models/wish_list.dart';
import 'package:wishey/core/repositories/wishes_repository.dart';

import 'wishes_repository_test.mocks.dart';

const _fakeWish = Wish(topic: 'topic', title: 'title');
const _fakeWishlist = WishList(
  wishes: [_fakeWish, Wish(topic: 'topic1', title: 'title1')],
);

const _fakeSuccess = Success();

const _serverFailure = Failure.server();
const _duplicateFailure = Failure.duplicate();

@GenerateMocks([Dio, Response])
void main() {
  late MockDio _client;
  late WishesRepository _wishesRepository;
  late MockResponse _response;

  setUp(
    () {
      _client = MockDio();
      when(
        _client.get(any),
      ).thenAnswer(
        (_) async => _response,
      );
      when(
        _client.post(
          any,
          data: _fakeWish.toJson(),
        ),
      ).thenAnswer(
        (_) async => _response,
      );
      _response = MockResponse();
      _wishesRepository = WishesRepository(_client);
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
          when(_response.data).thenReturn(_fakeWishlist.toJson());

          final wishList = await _wishesRepository.getWishlist();

          expect(wishList, ErrorProne.success(_fakeWishlist));
          verify(_response.statusCode).called(1);
          verify(_response.data).called(1);
          verifyNoMoreInteractions(_response);
          verify(_client.get(any)).called(1);
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
          verifyNever(_response.data);
          verifyNoMoreInteractions(_response);
          verify(_client.get(any)).called(1);
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
          verifyNever(_response.data);
          verifyNoMoreInteractions(_response);
          verify(
            _client.post(
              any,
              data: _fakeWish.toJson(),
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
          verifyNever(_response.data);
          verifyNoMoreInteractions(_response);
          verify(
            _client.post(
              any,
              data: _fakeWish.toJson(),
            ),
          ).called(1);
          verifyNoMoreInteractions(_client);
        },
      );

      test(
        'GIVEN replaceWish is called\n'
        'WHEN there is error\n'
        'THEN should return failure',
        () async {
          when(_response.statusCode).thenReturn(500);

          final repoResponse = await _wishesRepository.replaceWish(
            toReplace: _fakeWish,
            toBeReplacedWith: _fakeWish,
          );

          expect(repoResponse, ErrorProne.failure(_serverFailure));
          verify(_response.statusCode).called(1);
          verifyNever(_response.data);
          verifyNoMoreInteractions(_response);
          verify(
            _client.post(
              any,
              data: _fakeWish.toJson(),
            ),
          ).called(1);
          verifyNoMoreInteractions(_client);
        },
      );

      test(
        'GIVEN replaceWish is called\n'
        'WHEN there is no error\n'
        'THEN should return success',
        () async {
          when(_response.statusCode).thenAnswer((_) => 200);

          final repoResponse = await _wishesRepository.replaceWish(
            toReplace: _fakeWish,
            toBeReplacedWith: _fakeWish,
          );

          expect(repoResponse, ErrorProne.success(_fakeSuccess));
          verify(_response.statusCode).called(1);
          verifyNever(_response.data);
          verifyNoMoreInteractions(_response);
          verify(
            _client.post(
              any,
              data: _fakeWish.toJson(),
            ),
          ).called(1);
          verifyNoMoreInteractions(_client);
        },
      );

      test(
        'GIVEN replaceWish is called\n'
        'WHEN there is error 409\n'
        'THEN should return failure',
        () async {
          when(_response.statusCode).thenReturn(409);

          final repoResponse = await _wishesRepository.replaceWish(
            toReplace: _fakeWish,
            toBeReplacedWith: _fakeWish,
          );

          expect(repoResponse, ErrorProne.failure(_duplicateFailure));
          verify(_response.statusCode).called(1);
          verifyNever(_response.data);
          verifyNoMoreInteractions(_response);
          verify(
            _client.post(
              any,
              data: _fakeWish.toJson(),
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
          verifyNever(_response.data);
          verifyNoMoreInteractions(_response);
          verify(
            _client.post(
              any,
              data: _fakeWish.toJson(),
            ),
          ).called(1);
          verifyNoMoreInteractions(_client);
        },
      );
    },
  );
}
