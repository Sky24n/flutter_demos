class StringIds {
  static String titleHome = 'title_home';
  static String titleSetting = 'title_setting';
}

Map<String, Map<String, String>> localizedSimpleValues = {
  'en': {
    StringIds.titleHome: 'Home',
    StringIds.titleSetting: 'Setting',
  },
  'zh': {
    StringIds.titleHome: '主页',
    StringIds.titleSetting: '设置',
  },
};

Map<String, Map<String, Map<String, String>>> localizedValues = {
  'en': {
    'US': {
      StringIds.titleHome: 'Home',
      StringIds.titleSetting: 'Setting',
    }
  },
  'zh': {
    'CN': {
      StringIds.titleHome: '主页',
      StringIds.titleSetting: '设置',
    },
    'HK': {
      StringIds.titleHome: '主頁',
      StringIds.titleSetting: '設置',
    },
    'TW': {
      StringIds.titleHome: '主頁',
      StringIds.titleSetting: '設置',
    }
  }
};

