import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(home: const HomePage(), debugShowCheckedModeBanner: false, routes: <String, WidgetBuilder>{
    "/HomePage": (BuildContext context) => const HomePage(),
    "/TextPage": (BuildContext context) => const TextPage(),
    "/ImageTilt":(BuildContext context) => const ImageTilt(),
    "/ImageRotate":(BuildContext context) => const ImageRotate(),
    "/Imagemove":(BuildContext context) => const ImageMove()
  }));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Radio Buttons")),
        body: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [

          ],
        ));
  }
}

class TextPage extends StatefulWidget {
  const TextPage({Key? key}) : super(key: key);

  @override
  _TextPage createState() => _TextPage();
}

class _TextPage extends State<TextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text("Pick a stooge")));
  }
}

class ImageTilt extends StatefulWidget {
  const ImageTilt({Key? key}) : super(key: key);

  @override
  _ImageTilt createState() => _ImageTilt();
}

class _ImageTilt extends State<TextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Pick a stooge")));
  }
}



class ImageRotate extends StatefulWidget {
  const ImageRotate({Key? key}) : super(key: key);

  @override
  _ImageRotate createState() => _ImageRotate();
}

class _ImageRotate extends State<TextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Pick a stooge")));
  }
}



class ImageMove extends StatefulWidget {
  const ImageMove({Key? key}) : super(key: key);

  @override
  _ImageMove createState() => _ImageMove();
}

class _ImageMove extends State<TextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Pick a stooge")));
  }
}