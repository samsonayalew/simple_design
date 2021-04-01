import 'package:flutter/material.dart';

import '../constants.dart';

class PageTwo extends StatefulWidget {

  final VoidCallback onButtonPressed;

  PageTwo({@required this.onButtonPressed});

  @override
  _PageTwoState createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            SizedBox(height: 20,),
            TextFormField(
              minLines: 12, // any number you need (It works as the rows for the textarea)
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal),
                ),
                labelText: 'problem description',
                helperText: 'Write your compliant in detail',
                // counterText: '0 characters',
                suffixIcon: Image.asset(
                  'assets/sidebar/bx-notepad.png',
                  height: 20,
                ),
                // border: const OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              minWidth: 120,
              shape: StadiumBorder(),
              onPressed: () => widget.onButtonPressed(),
              color: primaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Next',
                    style: const TextStyle(
                      color: textColor,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: textColor,
                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    border: Border(),
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff6CC599),
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    border: Border(),
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff24C576),
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    border: Border(),
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffAEDEC6),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
