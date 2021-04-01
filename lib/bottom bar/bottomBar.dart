import 'package:aaccsa_side_bar/bottom bar/settings.dart';
import 'package:aaccsa_side_bar/bottom%20bar/businessinformation.dart';
import 'package:aaccsa_side_bar/bottom%20bar/corruptionCompliant.dart';
import 'package:aaccsa_side_bar/bottom%20bar/events.dart';
import 'package:aaccsa_side_bar/bottom%20bar/trainings.dart';
import 'package:aaccsa_side_bar/constants.dart';

import 'clipper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:aaccsa_side_bar/ViewModel/language_view_model.dart';
import 'package:aaccsa_side_bar/bottom bar/news.dart';
import 'package:aaccsa_side_bar/AppLocalizations.dart';
import 'package:provider/provider.dart';

class BottomBar extends StatefulWidget {
  static const id = 'bottom bar';

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar>
    with SingleTickerProviderStateMixin, NavigatorObserver {
  bool isOpened = false;
  bool _visible = false;
  Icon fabIcon = Icon(Icons.add);

  int _selectedPage = 0;
  final _pageOptions = [
    CorruptionCompliant(),
    Settings(),
  ];

  Animation<double> _animation;
  AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 260,
      ),
    );

    final curvedAnimation = CurvedAnimation(
      curve: Curves.easeInOut,
      parent: _animationController,
    );
    _animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(curvedAnimation);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var language = Provider.of<LanguageViewModel>(
      context,
      listen: false,
    ).currentLanguage;
    Locale locale = Locale(language);
    var localization = AppLocalizations(locale);

    return Scaffold(
      body: _pageOptions[_selectedPage],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff415AB7),
        child: Icon(Icons.add),
        onPressed: () {
          return showDialog(
            barrierColor: Colors.transparent,
            context: context,
            builder: (context) {
              return bottomStack(context);
            },
          );
        },
        tooltip: 'Toggle Opacity',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.white,
        currentIndex: _selectedPage,
        backgroundColor: primaryColor,
        unselectedLabelStyle: TextStyle(color: Colors.white),
        onTap: (_index) {
          setState(() {
            _selectedPage = _index;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.comment,
              color: Colors.white,
            ),
            label: 'Corruption compliant',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  Widget bottomStack(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 90,
          left: (MediaQuery.of(context).size.width / 2) - 80,
          child: ClipPath(
            // clipper: Clipper(),
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    MaterialButton(
                      minWidth: 150,
                      onPressed: () {
                        Navigator.of(context).pushNamed(News.id);
                      },
                      color: primaryColor,
                      child: Text(
                        'News',
                        style: TextStyle(color: textColor),
                      ),
                    ),
                    MaterialButton(
                      minWidth: 150,
                      onPressed: () {
                        Navigator.of(context).pushNamed(Events.id);
                      },
                      color: primaryColor,
                      child: Text(
                        'Event',
                        style: TextStyle(color: textColor),
                      ),
                    ),
                    MaterialButton(
                      minWidth: 150,
                      onPressed: () {
                        Navigator.of(context).pushNamed(Trainings.id);
                      },
                      color: primaryColor,
                      child: Text(
                        'Training',
                        style: TextStyle(color: textColor),
                      ),
                    ),
                    MaterialButton(
                      minWidth: 150,
                      onPressed: () {
                        Navigator.of(context).pushNamed(BusinessInformation.id);
                      },
                      color: primaryColor,
                      child: Text(
                        'Business Info',
                        style: TextStyle(color: textColor),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
