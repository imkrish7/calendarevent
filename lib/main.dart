import 'package:calendar_event/models/my_theme_provider.dart';
import 'package:calendar_event/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyThemeModel(),
      child: Consumer<MyThemeModel>(
        builder: (context, theme, child) => MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Calendar',
            theme: themeData(context),
            darkTheme: darkThemeData(context),
            themeMode: theme.isLightTheme ? ThemeMode.light : ThemeMode.dark,
            home: Scaffold(
                appBar: AppBar(
                  title: const Text('Calendar'),
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(
                        theme.isLightTheme ? Icons.dark_mode : Icons.light_mode,
                      ),
                      iconSize: 24,
                      onPressed: () {
                        theme.changeTheme();
                      },
                    )
                  ],
                ),
                body: Text("Start Point"))),
      ),
    );
  }
}
