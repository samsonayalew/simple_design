import 'package:flutter/material.dart';

import '../constants.dart';

class PageOne extends StatefulWidget {
  final VoidCallback onButtonPressed;

  PageOne({@required this.onButtonPressed});

  @override
  _PageOne createState() => _PageOne();
}

class _PageOne extends State<PageOne> {
  bool firstBuild = true;
  String sexValue = '';

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BuildContext dialogContext;
      // if (firstBuild) {
      //   firstBuild = false;
      //   showDialog(
      //     context: context,
      //     barrierDismissible: false,
      //     builder: (BuildContext context) {
      //       dialogContext = context;
      //       return Dialog(
      //         child: Padding(
      //           padding: const EdgeInsets.all(8.0),
      //           child: Column(
      //             mainAxisSize: MainAxisSize.min,
      //             children: [
      //               Row(
      //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                 children: [
      //                   Text(
      //                     'Notice',
      //                     style: TextStyle(
      //                         fontSize: 20, fontWeight: FontWeight.bold),
      //                   ),
      //                   FloatingActionButton(
      //                     child: Icon(
      //                       Icons.close,
      //                       color: Colors.redAccent,
      //                     ),
      //                     backgroundColor: Colors.white,
      //                     onPressed: () {
      //                       Navigator.pop(dialogContext);
      //                     },
      //                   ),
      //                 ],
      //               ),
      //               SizedBox(
      //                 height: 30,
      //               ),
      //               Text(
      //                 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
      //                 overflow: TextOverflow.clip,
      //                 style: TextStyle(
      //                   fontSize: 20,
      //                   color: Color(0xffFF4D4D),
      //                 ),
      //               ),
      //               SizedBox(
      //                 height: 30,
      //               ),
      //             ],
      //           ),
      //         ),
      //       );
      //     },
      //   );
      // }
    });

    return Container(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            DropdownButtonFormField<String>(
              items: ['Male', 'Female']
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
                labelText: 'Sex',
                helperText: 'enter your sex',
                // counterText: '0 characters',
                suffixIcon: Image.asset(
                  'assets/sidebar/bx-buildings.png',
                  height: 20,
                ),
                // border: const OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal),
                ),
                labelText: 'company name',
                helperText: 'company name of the compliant',
                // counterText: '0 characters',
                suffixIcon: Image.asset(
                  'assets/sidebar/bx-buildings.png',
                  height: 20,
                ),
                // border: const OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal),
                ),
                labelText: 'directorate name',
                helperText: 'Directorate name of the corrupt company',
                // counterText: '0 characters',
                suffixIcon: Image.asset(
                  'assets/sidebar/bx-notepad.png',
                  height: 20,
                ),
                // border: const OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            InputDatePickerFormField(
              fieldLabelText: 'Date of occurance',
              // decoration: InputDecoration(
              //   hintText: 'date of occurrence',
              //   helperText: 'When did the corruption happen',
              //   // counterText: '0 characters',
              //   suffixIcon: Image.asset(
              //     'assets/sidebar/bx-calendar.png',
              //     height: 20,
              //   ),
              //   // border: const OutlineInputBorder(),
              // ),
              firstDate: DateTime(2012),
              lastDate: DateTime(2200),
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
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    border: Border(),
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff24C576),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    border: Border(),
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff6CC599),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
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
