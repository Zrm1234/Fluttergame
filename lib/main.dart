import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: Text("تطابق صورة"),
        backgroundColor: Colors.indigo[800],
      ),
      body: ImagePasge(),
    ),
  ));
}

class ImagePasge extends StatefulWidget {
  const ImagePasge({Key? key}) : super(key: key);

  @override
  State<ImagePasge> createState() => _ImagePasgeState();
}

class _ImagePasgeState extends State<ImagePasge> {
  int leftnumberimage = 1;
  int rightnumberimage = 2;
  void change() {
    leftnumberimage = Random().nextInt(8) + 1;
    rightnumberimage = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftnumberimage == rightnumberimage
              ? "مبروك لقد نجحت"
              : "حاول مرة اخرى",
          style: TextStyle(
            fontSize: 42.0,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        change();
                      });
                    },
                    child: Image.asset("images/image-$leftnumberimage.png")),
              ),
              Expanded(
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        change();
                      });
                    },
                    child: Image.asset("images/image-$rightnumberimage.png")),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
