/// Saves try-catching by wrapping value into Either-like object
/// which can be then unfolded using [when], [forceUnfold] methods
class ErrorProne<T> {
  final T? _value;
  final bool _isSuccessful;
  final Object? _problem;

  ErrorProne.success(this._value)
      : _isSuccessful = true,
        _problem = null;

  ErrorProne.failure(this._problem)
      : _value = null,
        _isSuccessful = false;

  /// Used to unfold depending on the actual state of the value
  ///
  /// Example:
  ///
  ///   myErrorProneValue.when(
  ///     success: (actualValue) => doActions(),
  ///     failure: (errorObject) => fail(),
  ///   );
  void when({
    required void Function(T value) success,
    required void Function(Object? problem) failure,
  }) {
    assert(
      _isSuccessful && _value != null && _problem == null ||
          !_isSuccessful && _value == null,
      'The value should always be present when '
      'successful constructor is called, and '
      'should never be present otherwise',
    );

    _isSuccessful ? success(_value!) : failure(_problem);
  }

  /// A way to make changes to value if there is a value.
  /// Changes nothing, if there wasn't a value.
  ErrorProne<V> mapIfSuccess<V>(V Function(T) mapper) {
    if (_isSuccessful) {
      return ErrorProne.success(mapper(_value!));
    }
    return ErrorProne.failure(_problem);
  }

  /// Returns the value if there is any or null, if there is none.
  T? forceUnfold() => _value;
}

/// Methods to help you with wrapping a value into [ErrorProne] object.
mixin ErrorProneMixin {
  /// If [function] execution does not throw an error, the [ErrorProne.success]
  /// constructor gets called with a return value of [function] as a parameter.
  ///
  /// If [function] fails due to some kind of exception, the
  /// [ErrorProne.failure] constructor gets called. The catched exception is
  /// will be used as a parameter.
  ErrorProne<T> executeErrorProne<T>(T Function() function) {
    try {
      return ErrorProne.success(function());
    } catch (e) {
      return ErrorProne.failure(e);
    }
  }

  Future<ErrorProne<T>> executeErrorProneAsync<T>(
    Future<T> Function() function,
  ) async {
    try {
      return ErrorProne.success(await function());
    } catch (e) {
      return ErrorProne.failure(e);
    }
  }
}
