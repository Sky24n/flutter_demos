import 'package:flutter/material.dart';

import 'package:flutter_demos/pages/index.dart';

class SettingPage extends StatefulWidget {
  @override
  State createState() => _SettingPageState();
}

class _SettingPageState extends LBaseState<SettingPage> {
  @override
  Widget build(BuildContext context) {
    CustomLocalizations _customLocal = CustomLocalizations.instance;
    return Scaffold(
      appBar: AppBar(
        title: Text(cl.getString(StringIds.titleSetting)),
      ),
      body: new ListView(
        children: <Widget>[
          ListTile(title: Text('fluintl库详细使用请参考flutter_wanandroid'),),
          ListTile(title: Text(CustomLocalizations.of(context).getString(StringIds.titleSetting))),
          ListTile(title: Text(CustomLocalizations.instance.getString(StringIds.titleSetting))),
          ListTile(title: Text(_customLocal.getString(StringIds.titleSetting))),
          ListTile(title: Text(cl.getString(StringIds.titleSetting))),
          ListTile(title: Text(cl.getString(StringIds.titleSetting, languageCode: 'en', countryCode: 'US'))),
          ListTile(title: Text(cl.getString(StringIds.titleSetting, languageCode: 'zh', countryCode: 'CN'))),
          ListTile(title: Text(cl.getString(StringIds.titleSetting, languageCode: 'zh', countryCode: 'HK'))),
          ListTile(title: Text(cl.getString(StringIds.titleSetting, languageCode: 'zh', countryCode: 'TW'))),
        ],
      ),
    );
  }
}