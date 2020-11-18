// import 'dart:io';

// import 'package:college_plan/infrastructure/repositories/interceptor/dio_connectivity_request_retry.dart';
// import 'package:dio/dio.dart';
// import 'package:meta/meta.dart';

// class RetryOnConnectionChangeInterceptor extends Interceptor {
//   final DioConnectivityRequestRetrier requestRetrier;

//   RetryOnConnectionChangeInterceptor({@required this.requestRetrier});
//   @override
//   Future onError(DioError err) {
//     if (_shouldRetry(err)) {
//       //
//       try {
//         return requestRetrier.scheduleRequestRetry(err.request);
//       } catch (e) {
//         return e;
//       }
//     }
//     return err;
//   }

//   bool _shouldRetry(DioError err) {
//     return err.type == DioErrorType.DEFAULT &&
//         err.error != null &&
//         err.error is SocketException;
//   }
// }
