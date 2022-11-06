

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pizzaparty/views/page_1/people.g.dart';
import 'package:pizzaparty/widgets/policy.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:webview_flutter/webview_flutter.dart';


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
        backgroundColor: Colors.orange[300],
        shadowColor: Colors.orange,

      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: Text('Set up your preferences',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black54,
              fontWeight: FontWeight.w200,
                fontSize: 25,
            ),
            ),
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
                leading: Icon(Icons.notifications),
                title: Text('Enable Notifications'),
              ),
              SettingsTile.navigation(
                leading: Icon(Icons.document_scanner),
                title: Text('Privacy Police'),
                onPressed: (BuildContext context) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WebViewTest()),
                  );
                },
              ),
              SettingsTile.navigation(
                leading: Icon(Icons.bug_report),
                title: Text('Report a Bug'),
                value: Text("or send a sugestion"),
                onPressed: (BuildContext context) {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 400,
                        color: Colors.white,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Icon(Icons.bug_report, size: 60, color: Colors.grey[800],),
                              Padding(padding: EdgeInsets.only(top: 30.0)),
                              const Text('Report a bug or send a sugestion',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.black54,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 18,

                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 30.0)),
                              const Text('If you want to report a bug: \nsend mail to mdyl245@gmail.com',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.black54,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,

                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 25.0)),
                              const Text('If you want to send a sugestion: \nwrite it on comment in Google Play.',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.black54,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,

                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 25.0)),
                              ElevatedButton(
                                child: const Text('OK'),
                                onPressed: () => Navigator.pop(context),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.orange[300],

                                )

                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              SettingsTile.navigation(
                leading: Icon(Icons.info_outlined),
                title: Text('About us'),
                onPressed: (BuildContext context) {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 450,
                        color: Colors.white,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Icon(Icons.info_outlined, size: 60, color: Colors.grey[800],),
                              Padding(padding: EdgeInsets.only(top: 30.0)),
                              const Text('About us',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.black54,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 18,

                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 30.0)),
                              const Text('ROCKET STUDIO \n > _ Your life becomes easier with our applications.',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.black54,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,

                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 25.0)),
                              const Text('At rocket studio, we solve peoples everyday problems and try to make their lives better.',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.black54,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,

                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 25.0)),
                              ElevatedButton(
                                  child: const Text('OK'),
                                  onPressed: () => Navigator.pop(context),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.orange[300],

                                  )

                              ),
                            ],
                          ),
                        ),
                      );
                    },
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('settings'.tr),
        backgroundColor: Colors.orange[300],
        shadowColor: Colors.orange,

      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: Text('Choose your language',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black54,
              fontWeight: FontWeight.w200,
              fontSize: 25,
            ),
            ),
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


