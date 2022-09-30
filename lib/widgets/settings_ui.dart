import 'package:flutter/material.dart';
import 'package:pizzaparty/newlibs/global.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';






class Settingsmenu extends StatefulWidget {
  const Settingsmenu({
    Key? key,
  }) : super(key: key);
  @override
  _Settingsmenu createState() => _Settingsmenu();
}

class _Settingsmenu extends State<Settingsmenu> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('settings'.tr),
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: Text('Set up your preferences'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: Icon(Icons.language),
                title: Text('settings_language'.tr),
                value: Text('active_language'.tr),
                onPressed: (BuildContext context) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Langmenu()),
                  );
                },
              ),
              SettingsTile.switchTile(
                onToggle: (value) {},
                initialValue: true,
                leading: Icon(Icons.audiotrack),
                title: Text('Enable Sound'),
              ),
              SettingsTile.switchTile(
                onToggle: (value) {},
                initialValue: false,
                leading: Icon(Icons.format_paint),
                title: Text('Dark theme'),
              ),
              SettingsTile.navigation(
                leading: Icon(Icons.document_scanner),
                title: Text('Terms of Service'),
                onPressed: (BuildContext context) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Langmenu()),
                  );
                },
              ),
              SettingsTile.navigation(
                leading: Icon(Icons.bug_report),
                title: Text('Report a Bug'),
                value: Text("or send a sugestion"),
                onPressed: (BuildContext context) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Langmenu()),
                  );
                },
              ),
              SettingsTile.navigation(
                leading: Icon(Icons.info_outlined),
                title: Text('About us'),
                onPressed: (BuildContext context) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Langmenu()),
                  );
                },
              ),
            ],
          ),

        ],
      ),
    );
  }
}

class Langmenu extends StatefulWidget {
  const Langmenu({
    Key? key,
  }) : super(key: key);
  @override
  _Langmenu createState() => _Langmenu();
}


class _Langmenu extends State<Langmenu> {
  late SharedPreferences preferences;

  @override
  void initState(){
    super.initState();
    init();
  }
  Future init() async {
    preferences =await SharedPreferences.getInstance();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('select_language'.tr),
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: Text('Set up your preferences'),
            tiles: <SettingsTile>[
              SettingsTile.navigation(
                leading: Icon(Icons.language),
                title: Text('English'),
                onPressed: (BuildContext context) {
                  var local = Locale('en','US');
                  Get.updateLocale(local);
                  preferences.setString('selected_lang', 'local');

                },
              ),
              SettingsTile.navigation(
                leading: Icon(Icons.language),
                title: Text('Polish'),
                onPressed: (BuildContext context) {

                  var local = Locale('pl','PL');
                  Get.updateLocale(local);
                  preferences.setString('selected_lang', 'local');
                },
              ),
              SettingsTile.navigation(
                leading: Icon(Icons.language),
                title: Text('German'),
                onPressed: (BuildContext context) {
                  var local = Locale('en','US');
                  Get.updateLocale(local);
                },
              ),
              SettingsTile.navigation(
                leading: Icon(Icons.language),
                title: Text('Spanish'),
                onPressed: (BuildContext context) {
                  var local = Locale('en','US');
                  Get.updateLocale(local);
                },
              ),
            ],
          ),

        ],
      ),
    );
  }
}




