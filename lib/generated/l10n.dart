// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Error connecting to the server`
  String get errorConnectingToTheServer {
    return Intl.message(
      'Error connecting to the server',
      name: 'errorConnectingToTheServer',
      desc: '',
      args: [],
    );
  }

  /// `Remote server internal error occurred`
  String get remoteServerInternalError {
    return Intl.message(
      'Remote server internal error occurred',
      name: 'remoteServerInternalError',
      desc: '',
      args: [],
    );
  }

  /// `Logout Error`
  String get logoutError {
    return Intl.message(
      'Logout Error',
      name: 'logoutError',
      desc: '',
      args: [],
    );
  }

  /// `Error occured during json parsing`
  String get parseError {
    return Intl.message(
      'Error occured during json parsing',
      name: 'parseError',
      desc: '',
      args: [],
    );
  }

  /// `Error occured during mapping`
  String get mapperError {
    return Intl.message(
      'Error occured during mapping',
      name: 'mapperError',
      desc: '',
      args: [],
    );
  }

  /// `Unknown internal error occurred`
  String get unknownInternalError {
    return Intl.message(
      'Unknown internal error occurred',
      name: 'unknownInternalError',
      desc: '',
      args: [],
    );
  }

  /// `Dismiss`
  String get dismiss {
    return Intl.message(
      'Dismiss',
      name: 'dismiss',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
