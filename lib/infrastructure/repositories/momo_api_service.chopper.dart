// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'momo_api_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$MomoApiService extends MomoApiService {
  _$MomoApiService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = MomoApiService;

  @override
  Future<Response<dynamic>> withdrawToMTN(
      {String amount,
      String currency,
      String externalId,
      String number,
      Map<String, dynamic> body}) {
    final $url = '/transfer';
    final $headers = {
      'amount': amount,
      'currency': currency,
      'externalId': externalId,
      'number': number
    };
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> creditTenflrWithMTN(
      {String amount,
      String currency,
      String externalId,
      String number,
      Map<String, dynamic> body}) {
    final $url = '/requesttopay';
    final $headers = {
      'amount': amount,
      'currency': currency,
      'externalId': externalId,
      'number': number
    };
    final $body = body;
    final $request =
        Request('POST', $url, client.baseUrl, body: $body, headers: $headers);
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> accountBalance() {
    final $url = '/accountBalance';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}
