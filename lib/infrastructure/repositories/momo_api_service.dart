import 'package:chopper/chopper.dart';

part 'momo_api_service.chopper.dart';

@ChopperApi()
abstract class MomoApiService extends ChopperService {
  @Post(path: '/transfer')
  Future<Response> withdrawToMTN({
    @Header('amount') String amount,
    @Header('currency') String currency,
    @Header('externalId') String externalId,
    @Header('number') String number,
    @Body() Map<String, dynamic> body,
  });

  @Post(path: '/requesttopay')
  Future<Response> creditTenflrWithMTN({
    @Header('amount') String amount,
    @Header('currency') String currency,
    @Header('externalId') String externalId,
    @Header('number') String number,
    @Body() Map<String, dynamic> body,
  });

  @Get(path: '/accountBalance')
  Future<Response> accountBalance();

  static MomoApiService create() {
    final client = ChopperClient(
        baseUrl: 'https://us-central1-c0llegeplan.cloudfunctions.net',
        services: [
          _$MomoApiService(),
        ],
        converter: JsonConverter(),
        interceptors: [
          // HeadersInterceptor({'Cache-Control': 'no-cache'}),  // this interceptor is user to set a header to all client request
          HttpLoggingInterceptor(),
          CurlInterceptor() // use to perform request in terminal
        ]);

    return _$MomoApiService(client);
  }
}
