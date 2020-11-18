import 'dart:async';

import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

class DioConnectivityRequestRetrier {
  final Dio dio;
  final DataConnectionChecker connectionChecker;
  DioConnectivityRequestRetrier(
      {@required this.dio, @required this.connectionChecker});

  Future<Response> scheduleRequestRetry(RequestOptions requestOptions) async {
    StreamSubscription subscription;
    final responseCompleter = Completer<Response>();
    subscription = connectionChecker.onStatusChange.listen(
      (connectivityResult) {
        if (connectivityResult != DataConnectionStatus.disconnected) {
          subscription.cancel();
          responseCompleter.complete(
            dio.request(
              requestOptions.path,
              cancelToken: requestOptions.cancelToken,
              data: requestOptions.data,
              onReceiveProgress: requestOptions.onReceiveProgress,
              onSendProgress: requestOptions.onSendProgress,
              queryParameters: requestOptions.queryParameters,
              options: requestOptions,
            ),
          );
        }
      },
    );
    return responseCompleter.future;
  }
}
