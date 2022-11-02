import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(home: const HomePage(), debugShowCheckedModeBanner: false, routes: <String, WidgetBuilder>{
    "/HomePage": (BuildContext context) => const HomePage(),
    "/TextPage": (BuildContext context) => const TextPage(),
    "/ImageTilt":(BuildContext context) => const ImageTilt(),
    "/ImageRotate":(BuildContext context) => const ImageRotate(),
    "/Imagemove":(BuildContext context) => const ImageMove();
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

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPage createState() => _SecondPage();
}

class _SecondPage extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text("Pick a stooge")));
  }
}


class ThirdPage extends StatelessWidget {

  const ThirdPage({Key? key}) : super(key: key);
  Widget goHome(BuildContext context){
    return(Column(