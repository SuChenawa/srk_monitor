import 'dart:async';
import 'dart:convert' show jsonDecode, jsonEncode, utf8;
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:retry/retry.dart';

class HttpService {
  static HttpService? _instance;
  factory HttpService() => _instance ??= HttpService._();
  HttpService._();

  Future<Response> _simpleGet(
    String uri, {
    required int timeout,
    required int retryAttempts,
  }) async {
    final url = Uri.parse(uri);
    final r = RetryOptions(maxAttempts: retryAttempts);
    final response = await r.retry(
      () => http
          .get(
            url,
          )
          .timeout(Duration(seconds: timeout)),
      retryIf: (e) => e is SocketException || e is TimeoutException,
    );

    return response;
  }

  Future<Map<String, dynamic>> get(
    String uri, {
    bool isCompute = false,
    bool isShowError = true,
    bool isThrowError = false,
    int retryAttempts = 3,
    int timeout = 15,
    bool showLoading = false,
  }) async {
    try {
      final response = await _simpleGet(
        uri,
        timeout: timeout,
        retryAttempts: retryAttempts,
      );

      if (response.statusCode == 200) {
        final data = jsonDecode(utf8.decode(response.bodyBytes));

        if (data['code'] == 0 || data['code'] == '0') {
          return data['data'];
        }

        throw data;
      }
      throw response;
    } catch (e) {
      if (e is SocketException) {
        if (isShowError) {
          rethrow;
        }
      }

      if (isThrowError) {
        rethrow;
      }

      return {};
    }
  }

  Future<Map<String, dynamic>> post(
    String uri, {
    Map<String, dynamic>? body,
    bool showLoading = true,
  }) async {
    final url = Uri.parse(uri);

    Map<String, dynamic>? formattedBody;
    if (body != null) {
      formattedBody = body;
    }

    final response = await http.post(
      url,
      body: jsonEncode(formattedBody),
    );

    Map<String, dynamic> responseJson = {};
    if (response.body.isNotEmpty) {
      responseJson = jsonDecode(response.body);
    }
    return responseJson;
  }

  // TODO lay了，有空再改吧

  // Future<Map<String, dynamic>> postWithRetry(
  //   String uri, {
  //   bool requireEncryption = false,
  //   Map<String, dynamic>? body,
  //   bool showLoading = true,
  //   bool shouldRetry = false,
  //   Function? checkIsValidRetry,
  //   int retryAttempts = 3,
  //   int timeout = 10,
  // }) async {
  //   final url = Uri.parse(uri);

  //   Map<String, dynamic>? formattedBody;
  //   if (body != null) {
  //     formattedBody = body;
  //     if (requireEncryption) {
  //       final serverTimestamp = await getServerTimestamp();
  //       final data = {
  //         ...body,
  //         'tt': serverTimestamp,
  //       };
  //       final payload = getRsaPayload(jsonEncode(data));
  //       formattedBody = {
  //         'payload': payload,
  //       };
  //     }
  //   }

  //   final response = await createProcess<http.Response>(
  //     showLoading: showLoading,
  //     process: () async {
  //       Future<dynamic> sendPostRequest() {
  //         // throw SocketException('test error');
  //         return http
  //             .post(
  //               url,
  //               headers: headers,
  //               body: jsonEncode(formattedBody),
  //             )
  //             .timeout(Duration(seconds: timeout));
  //       }

  //       final res = shouldRetry
  //           ? await retry(
  //               sendPostRequest,
  //               maxAttempts: retryAttempts,
  //               retryIf: (e) {
  //                 final bool retryIfExceptions =
  //                     e is SocketException || e is TimeoutException;
  //                 final bool retryIfCheckValid =
  //                     checkIsValidRetry != null ? checkIsValidRetry() : true;
  //                 return retryIfExceptions && retryIfCheckValid;
  //               },
  //             )
  //           : await sendPostRequest();
  //       return res;
  //     },
  //   );

  //   _updateCookie(response!);

  //   final responseJson = jsonDecode(utf8.decode(response.bodyBytes));
  //   return responseJson;
  // }
}
