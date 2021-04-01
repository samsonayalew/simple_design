import 'package:aaccsa_side_bar/bottom bar/businessinformation.dart';
import 'package:aaccsa_side_bar/bottom bar/events.dart';
import 'package:aaccsa_side_bar/bottom bar/loadingscreen.dart';
import 'package:aaccsa_side_bar/bottom bar/news.dart';
import 'package:aaccsa_side_bar/bottom bar/register.dart';
import 'package:aaccsa_side_bar/bottom bar/settings.dart';
import 'package:aaccsa_side_bar/bottom bar/trainings.dart';
import 'package:aaccsa_side_bar/bottom bar/login.dart';
import 'package:aaccsa_side_bar/bottom%20bar/bottomBar.dart';
import 'package:aaccsa_side_bar/bottom%20bar/corruptionCompliant.dart';
import 'package:aaccsa_side_bar/bottom%20bar/transitionsHomePageState.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'ViewModel/language_view_model.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<LanguageViewModel>(
          create: (_) => LanguageViewModel(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  final _myApp = GlobalKey<State<StatefulWidget>>();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return Consumer<LanguageViewModel>(
        builder: (_, language, __) => MaterialApp(
      key: _myApp,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: Login.id,
      routes: {
        News.id: (context) => News(),
        Login.id: (context) => Login(),
        Events.id: (context) => Events(),
        Settings.id: (context) => Settings(),
        Register.id: (context) => Register(),
        Trainings.id: (context) => Trainings(),
        BottomBar.id: (context) => BottomBar(),
        Loadingscreen.id: (context) => Loadingscreen(),
        TransitionsHomePage.id: (context) => TransitionsHomePage(),
        BusinessInformation.id: (context) => BusinessInformation(),
        CorruptionCompliant.id: (context) => CorruptionCompliant(),
      },
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', 'US'), // English, no country code
        const Locale('am', ''), // Amharic, no country code
        // ... other locales the app supports
      ],
    ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      Navigator.pushNamed(context, Login.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
