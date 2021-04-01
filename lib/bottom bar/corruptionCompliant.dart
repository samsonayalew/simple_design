import 'package:aaccsa_side_bar/AppLocalizations.dart';
import 'package:aaccsa_side_bar/ViewModel/language_view_model.dart';
import 'package:aaccsa_side_bar/bottom bar/customDrawer.dart';
import 'package:aaccsa_side_bar/bottom bar/pageone.dart';
import 'package:aaccsa_side_bar/bottom bar/pagethree.dart';
import 'package:aaccsa_side_bar/bottom bar/pagetwo.dart';
import 'package:aaccsa_side_bar/constants.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CorruptionCompliant extends StatefulWidget {
  CorruptionCompliant({
    Key key,
  }) : super(key: key);
  static const id = 'corruptionCompliant';

  @override
  _CorruptionCompliant createState() => _CorruptionCompliant();
}

class _CorruptionCompliant extends State<CorruptionCompliant> {
  @override
  Widget build(BuildContext context) {
    var language =
        Provider.of<LanguageViewModel>(context, listen: false).currentLanguage;
    Locale locale = Locale(language);
    int _index = 0;
    var controller = PageController(initialPage: 0);

    var localization = AppLocalizations(locale);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text(
          localization.corruptionComplaint,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: PageView(
          controller: controller,
          onPageChanged: (index){
            _index = index;
          },
          children: [
            PageOne(onButtonPressed: () {
              controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.bounceInOut);
            }),
            PageTwo(onButtonPressed: () {
              controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.bounceInOut);
            }),
            PageThree()
          ],
        ),
      ),
    );
  }
}
