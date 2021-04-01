import 'package:flutter/material.dart';

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal),
                ),
                labelText: 'Image',
                helperText: 'If there is image evidence',
                // counterText: '0 characters',
                suffixIcon: Icon(
                  Icons.image,
                  size: 30,
                  color: Color(0xff072185),
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
                labelText: 'Video',
                helperText: 'If there is a video evidence',
                // counterText: '0 characters',
                suffixIcon: Image.asset(
                  'assets/sidebar/bx-video-recording.png',
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
                labelText: 'audio',
                helperText: 'If you have audio evidence',
                // counterText: '0 characters',
                suffixIcon: Image.asset(
                  'assets/sidebar/bx-album.png',
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
                labelText: 'other documents',
                helperText: 'Other relevant document',
                // counterText: '0 characters',
                suffixIcon: Image.asset(
                  'assets/sidebar/bxs-file-doc.png',
                  height: 20,
                ),
                // border: const OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            MaterialButton(
              shape: StadiumBorder(),
              padding: EdgeInsets.all(16),
              color: Color(0xff072185),
              child: Text(
                'Finish',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
