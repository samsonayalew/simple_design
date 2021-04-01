import 'package:aaccsa_side_bar/AppLocalizations.dart';
import 'package:aaccsa_side_bar/ViewModel/language_view_model.dart';
import 'package:aaccsa_side_bar/bottom bar/CustomDrawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Settings extends StatefulWidget {
  @override
  _Settings createState() => _Settings();
  static const id = 'settings';
}

class _Settings extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    var language =
        Provider.of<LanguageViewModel>(context, listen: false).currentLanguage;
    Locale locale = Locale(language);
    var localization = AppLocalizations(locale);
    var darkLight = true;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text(
          localization.settings,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              DropdownButtonFormField<String>(
                items: ['English', 'አማሪኝ']
                    .map((label) => DropdownMenuItem(
                          child: Text(label),
                          value: label,
                        ))
                    .toList(),
                onChanged: (_) {},
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal),
                  ),
                  labelText: 'Language',
                  helperText: 'Your language preference',
                  // counterText: '0 characters',
                  suffixIcon: Icon(
                    Icons.menu_book,
                    size: 30,
                    color: const Color(0xff072185),
                  ),
                  // border: const OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 60,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                      width: 1,
                      color: Colors.teal,
                    ),
                    top: BorderSide(
                      width: 1,
                      color: Colors.teal,
                    ),
                    left: BorderSide(
                      width: 1,
                      color: Colors.teal,
                    ),
                    right: BorderSide(
                      width: 1,
                      color: Colors.teal,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Dark/Light Mode', style: TextStyle(fontSize: 16,),),
                    Switch(value: darkLight, activeColor: Color(0xff072185), onChanged: (_) {}),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
