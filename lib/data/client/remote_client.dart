import 'dart:async';
import 'dart:convert';

import 'package:flutter_image_list/core/constants/url_constants.dart';
import 'package:flutter_image_list/core/enums/request_type_enum.dart';
import 'package:flutter_image_list/data/entries/base/base_entry.dart';
import 'package:flutter_image_list/data/entries/base/base_response_entry.dart';
import 'package:flutter_image_list/data/exceptions/exception.dart';
import 'package:flutter_image_list/generated/l10n.dart';
import 'package:http/http.dart' as http;

class RemoteClient {
  RemoteClient._privateConstructor();

  static final RemoteClient _instance = RemoteClient._privateConstructor();

  factory RemoteClient() {
    return _instance;
  }

  static RemoteClient get getInstance => _instance;

  Future<BaseEntry<BaseResponseEntry>> makeRequest({
    required RequestType requestType,
    required String method,
    String? body,
    int timeout = 15,
    required String methodName,
  }) async {
    try {
      http.Request request = http.Request(
        requestType.name,
        Uri.parse(UrlConstants.baseApiUrl() + method),
      );

      if (body != null) {
        request.body = body;
      }

      http.StreamedResponse sResponse = await request.send().timeout(Duration(seconds: timeout));
      http.Response response = await http.Response.fromStream(sResponse);
      if (response.statusCode >= 200 && response.statusCode < 300) {
        BaseResponseEntry entry =
            BaseResponseEntry.fromJson(json.decode(utf8.decode(response.bodyBytes)));
        if (entry.result == 'OK') {
          return BaseEntry<BaseResponseEntry>(data: entry);
        } else {
          final exception = BaseException(
            message: entry.result.getMessageForException(),
            exceptionEnum: entry.result.getExceptionEnum(),
          );
          return BaseEntry<BaseResponseEntry>(error: exception);
        }
      } else {
        final exception = BaseException(
          statusCode: response.statusCode,
          message: response.body,
          url: request.url.toString(),
        );

        return BaseEntry<BaseResponseEntry>(error: exception);
      }
    } catch (error) {
      final exception = BaseException(message: S.current.remoteServerInternalError);

      return BaseEntry<BaseResponseEntry>(error: exception);
    }
  }
}
