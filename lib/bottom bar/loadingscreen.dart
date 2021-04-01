import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loadingscreen extends StatefulWidget {
  Loadingscreen({
    Key key,
  }) : super(key: key);
  static const id = 'Loadingscreen';
  @override
  _Loadingscreen createState() => _Loadingscreen();
}

class _Loadingscreen extends State<Loadingscreen>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Container(
        width: Size.infinite.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/sidebar/chamber logo.png'),
            SizedBox(height: 20,),
            CircularProgressIndicator(),
            SizedBox(height: 20,),
            Text('Loading...', style: TextStyle(color: Colors.teal, fontSize: 20, fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
