import 'package:aaccsa_side_bar/bottom%20bar/bottomBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  Register({Key key, this.title}) : super(key: key);
  static const id = 'register';
  final String title;

  @override
  _Register createState() => _Register();
}

class _Register extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Size.infinite.width,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal),
                  ),
                  hintText: "e-mail",
                  suffixIcon: Image.asset(
                    'assets/sidebar/bx-mail-send.png',
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal),
                  ),
                  hintText: "password",
                  suffixIcon: Image.asset(
                    'assets/sidebar/bx-lock.png',
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal),
                  ),
                  hintText: "confirm password",
                  suffixIcon: Image.asset(
                    'assets/sidebar/bx-lock.png',
                    height: 20,
                    width: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              MaterialButton(
                shape: StadiumBorder(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.done, color: Colors.white,),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Register',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                minWidth: Size.infinite.width,
                color: Color(0xff415AB7),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(context, BottomBar.id, (r) => false);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
