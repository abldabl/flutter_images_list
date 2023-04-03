import 'package:flutter_image_list/generated/l10n.dart';

class BaseException implements Exception {
  ExceptionEnum exceptionEnum;
  final int? statusCode;
  final String? url;
  final String? message;

  BaseException({
    this.exceptionEnum = ExceptionEnum.timeout,
    this.statusCode,
    this.message,
    this.url,
  });

  @override
  String toString() {
    return 'Exception{statusCode: ${statusCode ?? 'Unknown status code'}, message: ${message ?? 'Unknown exception'}';
  }
}

enum ExceptionEnum {
  /// base exceptions
  timeout('Timeout'),
  internalError('INTERNAL_ERROR'),
  wrongRequest('WRONG_REQUEST'),

  /// local errors
  parseError('Parse_Error'),
  mapperError('Mapper_Error'),
  localInternalError('Local_Internal_Error');

  const ExceptionEnum(this.name);
  final String name;
}

extension StringExceptionExtension on String {
  ExceptionEnum getExceptionEnum() {
    switch (this) {
      case 'Timeout':
        return ExceptionEnum.timeout;
      case 'INTERNAL_ERROR':
        return ExceptionEnum.internalError;
      case 'WRONG_REQUEST':
        return ExceptionEnum.wrongRequest;
      case 'Parse_Error':
        return ExceptionEnum.parseError;
      case 'Mapper_Error':
        return ExceptionEnum.mapperError;
      case 'Local_Internal_Error':
        return ExceptionEnum.localInternalError;
      default:
        return ExceptionEnum.localInternalError;
    }
  }

  String getMessageForException() {
    switch (this) {
      case 'Timeout':
        return S.current.errorConnectingToTheServer;
      case 'INTERNAL_ERROR':
        return S.current.remoteServerInternalError;
      case 'WRONG_REQUEST':
        return S.current.remoteServerInternalError;
      case 'Parse_Error':
        return S.current.parseError;
      case 'Mapper_Error':
        return S.current.mapperError;
      case 'Local_Internal_Error':
        return S.current.unknownInternalError;
      default:
        return S.current.unknownInternalError;
    }
  }
}
