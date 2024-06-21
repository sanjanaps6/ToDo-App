import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  final Function(ThemeData) changeTheme;

  const SettingsPage({Key? key, required this.changeTheme}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Dark Mode'),
            trailing: Switch(
              value: _isDarkMode,
              onChanged: (value) {
                setState(() {
                  _isDarkMode = value;
                  if (_isDarkMode) {
                    widget.changeTheme(ThemeData.dark());
                  } else {
                    widget.changeTheme(ThemeData.light());
                  }
                });
              },
            ),
          ),
          ListTile(
            title: Text('Contact Us'),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Contact Us'),
                    content: Text('Email: support@example.com'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text('Close'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
