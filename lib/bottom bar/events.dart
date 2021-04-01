import 'package:aaccsa_side_bar/AppLocalizations.dart';
import 'package:aaccsa_side_bar/ViewModel/language_view_model.dart';
import 'package:aaccsa_side_bar/bottom bar/customDrawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Events extends StatefulWidget {
  Events({
    Key key,
  }) : super(key: key);
  static const id = 'events';

  @override
  _Events createState() => _Events();
}

class _Events extends State<Events> {
  @override
  Widget build(BuildContext context) {
    var language =
        Provider.of<LanguageViewModel>(context, listen: false).currentLanguage;
    Locale locale = Locale(language);
    var localization = AppLocalizations(locale);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text(
          localization.events,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            OutlineButton(
              shape: Border.all(
                width: 10,
                color: Color(0xff415AB7),
              ),
              color: Colors.green,
              onPressed: () {
              },
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Image.asset(
                        'assets/sidebar/news/news1.png',
                      ),
                      Expanded(
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff415AB7),
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      SizedBox(height: 40,),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            OutlineButton(
              shape: Border.all(
                width: 10,
                color: Color(0xff415AB7),
              ),
              color: Colors.green,
              onPressed: () {
              },
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Image.asset(
                        'assets/sidebar/news/news2.png',
                      ),
                      Expanded(
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff415AB7),
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      SizedBox(height: 40,),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            OutlineButton(
              shape: Border.all(
                width: 10,
                color: Color(0xff415AB7),
              ),
              color: Colors.green,
              onPressed: () {
              },
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Image.asset(
                        'assets/sidebar/news/news1.png',
                      ),
                      Expanded(
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff415AB7),
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      SizedBox(height: 40,),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            OutlineButton(
              shape: Border.all(
                width: 10,
                color: Color(0xff415AB7),
              ),
              color: Colors.green,
              onPressed: () {
              },
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Image.asset(
                        'assets/sidebar/news/news2.png',
                      ),
                      Expanded(
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff415AB7),
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                      SizedBox(height: 40,),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
