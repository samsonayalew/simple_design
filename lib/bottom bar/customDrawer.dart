import 'package:aaccsa_side_bar/bottom bar/settings.dart';
import 'package:flutter/material.dart';

import 'package:aaccsa_side_bar/ViewModel/language_view_model.dart';
import 'package:aaccsa_side_bar/bottom bar/businessinformation.dart';
import 'package:aaccsa_side_bar/bottom bar/corruptionCompliant.dart';
import 'package:aaccsa_side_bar/bottom bar/events.dart';
import 'package:aaccsa_side_bar/bottom bar/login.dart';
import 'package:aaccsa_side_bar/bottom bar/news.dart';
import 'package:aaccsa_side_bar/bottom bar/trainings.dart';
import 'package:aaccsa_side_bar/AppLocalizations.dart';
import 'package:provider/provider.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var language =
        Provider.of<LanguageViewModel>(context, listen: false).currentLanguage;
    Locale locale = Locale(language);
    var localization = AppLocalizations(locale);

    return Drawer(
      //Todo: Add icon or Customer avatar if logged in
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 170,
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20,),
                IconButton(icon: Icon(Icons.account_circle, size: 50,), onPressed: (){}),
                SizedBox(height: 20,),
                Text('E-mail: samson.ayalew.et@gmail.com')
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Color(0xff415AB7),
              child: Column(
                children:[
                  DrawerItemsImage(
                    'assets/sidebar/newspaper.png',
                    localization.news,
                    Colors.white,
                        () {
                      Navigator.pushNamed(context, News.id);
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 1,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  DrawerItemsImage(
                    'assets/sidebar/event.png',
                    localization.events,
                    Colors.white,
                        () {
                      Navigator.pushNamed(context, Events.id);
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 1,
                    color: Colors.white,
                  ),
                  DrawerItemsImage(
                    'assets/sidebar/file-medical.png',
                    localization.trainings,
                    Colors.white,
                        () {
                      Navigator.pushNamed(context, Trainings.id);
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 1,
                    color: Colors.white,
                  ),
                  DrawerItemsImage(
                    'assets/sidebar/info-circle.png',
                    localization.businessInfo,
                    Colors.white,
                        () {
                      Navigator.pushNamed(context, BusinessInformation.id);
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 1,
                    color: Colors.white,
                  ),
                  DrawerItemsImage(
                    'assets/sidebar/chat-left-text.png',
                    localization.corruptionComplaint,
                    Colors.white,
                        () {
                      Navigator.pushNamed(context, CorruptionCompliant.id);
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 1,
                    color: Colors.white,
                  ),
                  DrawerItems(
                    Icons.settings,
                    localization.settings,
                    Colors.white,
                        () {
                      Navigator.pushNamed(context, Settings.id);
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 1,
                    color: Colors.white,
                  ),
                  DrawerItems(
                    Icons.logout,
                    localization.signOut,
                    Colors.white,
                        () {
                      Navigator.pushNamed(context, Login.id);
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 1,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerItems extends StatelessWidget {
  DrawerItems(this.icon, this.text, this.iconColor, this.onPressed);

  final icon;
  final text;
  final iconColor;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: const StadiumBorder(),
      splashColor: Colors.lightBlue,
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 4,
          horizontal: 2,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Icon(
                    icon,
                    size: 25,
                    color: iconColor,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              flex: 2,
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerItemsImage extends StatelessWidget {
  DrawerItemsImage(this.icon, this.text, this.iconColor, this.onPressed);

  final icon;
  final text;
  final iconColor;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: const StadiumBorder(),
      splashColor: Colors.lightBlue,
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 4,
          horizontal: 2,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Image.asset(
                    icon,
                    width: 20,
                    color: iconColor,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              flex: 2,
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}