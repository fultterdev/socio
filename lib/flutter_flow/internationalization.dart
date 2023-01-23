import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['gu', 'en', 'zh_Hant'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? guText = '',
    String? enText = '',
    String? zh_HantText = '',
  }) =>
      [guText, enText, zh_HantText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // page1
  {
    'ko5mclsf': {
      'gu': 'Home',
      'en': '',
      'zh_Hant': '',
    },
    'm50leq3e': {
      'gu': 'Fitness',
      'en': '',
      'zh_Hant': '',
    },
    '50665z0m': {
      'gu': 'The Running Ragamuffins',
      'en': '',
      'zh_Hant': '',
    },
    'lxxkvwxv': {
      'gu': '216 Members',
      'en': '',
      'zh_Hant': '',
    },
    'ni0my03o': {
      'gu': 'Fitness',
      'en': '',
      'zh_Hant': '',
    },
    '0088fwum': {
      'gu': 'The Running Ragamuffins',
      'en': '',
      'zh_Hant': '',
    },
    's1o831h4': {
      'gu': '216 Members',
      'en': '',
      'zh_Hant': '',
    },
    '19pqob81': {
      'gu': 'Health',
      'en': '',
      'zh_Hant': '',
    },
    '17l964cu': {
      'gu': 'Dads for Gas-free Groceries',
      'en': '',
      'zh_Hant': '',
    },
    'sh5lqngn': {
      'gu': '352 Members',
      'en': '',
      'zh_Hant': '',
    },
    '439uffze': {
      'gu': 'Home',
      'en': '',
      'zh_Hant': '',
    },
  },
  // page2
  {
    'dx0eohlx': {
      'gu': 'Home',
      'en': '',
      'zh_Hant': '',
    },
    '2ngekaia': {
      'gu': 'Enter your name',
      'en': '',
      'zh_Hant': '',
    },
    'zycldbs6': {
      'gu': 'Home',
      'en': '',
      'zh_Hant': '',
    },
  },
  // pag3
  {
    'w154v2sh': {
      'gu': 'Home',
      'en': '',
      'zh_Hant': '',
    },
    'z0a54kct': {
      'gu': 'Enter your name',
      'en': '',
      'zh_Hant': '',
    },
    'xabtuo3m': {
      'gu': 'Home',
      'en': '',
      'zh_Hant': '',
    },
  },
  // page4
  {
    'c9wjxf6e': {
      'gu': 'Home',
      'en': '',
      'zh_Hant': '',
    },
    'z6sbd6x1': {
      'gu': 'Home',
      'en': '',
      'zh_Hant': '',
    },
  },
  // page5
  {
    'qd3fu7yp': {
      'gu': 'Home',
      'en': '',
      'zh_Hant': '',
    },
    '20jyw20c': {
      'gu': 'Enter your name',
      'en': '',
      'zh_Hant': '',
    },
    'qjb17q1e': {
      'gu': 'Home',
      'en': '',
      'zh_Hant': '',
    },
  },
  // page6
  {
    'dnfn29ri': {
      'gu': 'Home',
      'en': '',
      'zh_Hant': '',
    },
    'sd8g32ne': {
      'gu': 'Button',
      'en': '',
      'zh_Hant': '',
    },
    'idyy0jr6': {
      'gu': 'Home',
      'en': '',
      'zh_Hant': '',
    },
  },
  // CARDCOM
  {
    'mpii7ra0': {
      'gu': 'Fitness',
      'en': '',
      'zh_Hant': '',
    },
    '1kfeqssb': {
      'gu': 'The Running Ragamuffins',
      'en': '',
      'zh_Hant': '',
    },
    'k8xh241i': {
      'gu': '216 Members',
      'en': '',
      'zh_Hant': '',
    },
  },
  // Miscellaneous
  {
    'wlfr8wvh': {
      'gu': '',
      'en': '',
      'zh_Hant': '',
    },
    '6pb1lwdz': {
      'gu': '',
      'en': '',
      'zh_Hant': '',
    },
    'r1m6fxsa': {
      'gu': '',
      'en': '',
      'zh_Hant': '',
    },
    'jxqasspi': {
      'gu': '',
      'en': '',
      'zh_Hant': '',
    },
    'ch6znbyk': {
      'gu': '',
      'en': '',
      'zh_Hant': '',
    },
    '3tscp9dr': {
      'gu': '',
      'en': '',
      'zh_Hant': '',
    },
    'o7evg65l': {
      'gu': '',
      'en': '',
      'zh_Hant': '',
    },
    'isa7ae3f': {
      'gu': '',
      'en': '',
      'zh_Hant': '',
    },
    '6o4xpkgw': {
      'gu': '',
      'en': '',
      'zh_Hant': '',
    },
    'szs5zuim': {
      'gu': '',
      'en': '',
      'zh_Hant': '',
    },
    'rnw2nd7b': {
      'gu': '',
      'en': '',
      'zh_Hant': '',
    },
    'v42ooro2': {
      'gu': '',
      'en': '',
      'zh_Hant': '',
    },
    'ucb9yapa': {
      'gu': '',
      'en': '',
      'zh_Hant': '',
    },
    'l0n7air0': {
      'gu': '',
      'en': '',
      'zh_Hant': '',
    },
    'ushqb70p': {
      'gu': '',
      'en': '',
      'zh_Hant': '',
    },
    'o65j9jqu': {
      'gu': '',
      'en': '',
      'zh_Hant': '',
    },
    'o2phuqdm': {
      'gu': '',
      'en': '',
      'zh_Hant': '',
    },
    'j4r067vm': {
      'gu': '',
      'en': '',
      'zh_Hant': '',
    },
    'aeb61zse': {
      'gu': '',
      'en': '',
      'zh_Hant': '',
    },
    'p1sit12x': {
      'gu': '',
      'en': '',
      'zh_Hant': '',
    },
  },
].reduce((a, b) => a..addAll(b));
