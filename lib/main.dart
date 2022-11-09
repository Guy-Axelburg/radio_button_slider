import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        "/HomePage": (BuildContext context) => const HomePage(),
        "/TextPage": (BuildContext context) => const TextPage(),
        "/ImageTilt": (BuildContext context) => const ImageTilt(),
        "/ImageScale": (BuildContext context) => const ImageScale(),
        "/ImageMove": (BuildContext context) => const ImageMove()
      }));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  int _groupValue1 = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Radio Buttons Assignment")),
        body: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [
            Row(
            children: [
              Radio(
                  value: "Text page",
                  groupValue: _groupValue1,
                  autofocus: true,
                  onChanged: (value) {
                    setState(() {
                      Navigator.of(context).pushNamed("/TextPage");
                    });
                  }),
              const Text(
                "Text page",
                style: TextStyle(fontSize: 18.0),
            ),
          ],
    ),
            Row(
              children: [
                Radio(
                    value: "Image Tilt page",
                    groupValue: _groupValue1,
                    autofocus: true,
                    onChanged: (value) {
                      setState(() {
                        Navigator.of(context).pushNamed("/ImageTilt");
                      });
                    }),
                const Text(
                  "Image Tilt page",
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
            Row(
              children: [
                Radio(
                    value: "Image Scale page",
                    groupValue: _groupValue1,
                    autofocus: true,
                    onChanged: (value) {
                      setState(() {
                        Navigator.of(context).pushNamed("/ImageScale");
                      });
                    }),
                const Text(
                  "Image Scale page",
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
            Row(
              children: [
                Radio(
                    value: "Image Move page",
                    groupValue: _groupValue1,
                    autofocus: true,
                    onChanged: (value) {
                      setState(() {
                        Navigator.of(context).pushNamed("/ImageMove");
                      });
                    }),
                const Text(
                  "Image Move page",
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            )
      ])
    );
  }
}
// end of main ---------------------------------------------


class TextPage extends StatefulWidget {
  const TextPage({Key? key}) : super(key: key);

  @override
  _TextPage createState() => _TextPage();
}

class _TextPage extends State<TextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Here's a deep dish pizza recipe: ")),
        body: ListView(padding: const EdgeInsets.all(20.0), children: [
          Text("Deep Dish Pizza"),
          FutureBuilder(
            future: DefaultAssetBundle.of(context)
                .loadString("assets/pizzarecipe"),
            builder: (context, snapshot) {
              return Text(snapshot.data.toString(), softWrap: true);
            },
          )
        ]));
  }
}
// end of text --------------------------------------------
class ImageTilt extends StatefulWidget {
  const ImageTilt({Key? key}) : super(key: key);

  @override
  _ImageTilt createState() => _ImageTilt();
}


class _ImageTilt extends State<ImageTilt> {


  double value1 =  1;
  double _currentSliderValue1 = 1;

  myRotate() {
    //alignment is need for height and width
    //provides base point so plotter knows
    //where to take measurements form
    return Align(
        alignment: Alignment.center,
        child: Transform.rotate(
            angle: (value1 * (pi / 180)),
            child:  Image.asset("ape.png")
          )
        );

  }

    Widget  mySlider(){
    return Slider(
        activeColor: Colors.green[800],
        inactiveColor: Colors.greenAccent,
        max: 360,
        min: 0,

        value: _currentSliderValue1,
        //graduated slider
        label: _currentSliderValue1.round().toString(),
        divisions: 10,
        onChanged: (double newvalue){

          setState((){
            value1 = newvalue.roundToDouble();
            _currentSliderValue1 = newvalue.roundToDouble();
            myRotate();

          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("Look at that monkey spin!")),

    body: ListView(padding: const EdgeInsets.all(20.0), children: [

      Column(
        children:[
          Text("Spin to win!"),
          Text(value1.toString()),
          mySlider(),
          myRotate()

        ]

      )


    ]));




  }
}
//end of tilt--------------------------------------------------



class ImageScale extends StatefulWidget {
  const ImageScale({Key? key}) : super(key: key);

  @override
  _ImageScale createState() => _ImageScale();
}

class _ImageScale extends State<ImageScale> {

  double value1 =  100;
  double _currentSliderValue1 = 100;

  myScale() {
    //alignment is need for height and width
    //provides base point so plotter knows
    //where to take measurements form
    return Align(
        alignment: Alignment.center,
        child: Transform.scale(
            scale: (value1/100 ),
            child: Image.asset("ape.png")
              ));

  }

  Widget  mySlider(){
    return Slider(
        activeColor: Colors.blue[800],
        inactiveColor: Colors.blueGrey,
        max: 150,
        min: 50,

        value: _currentSliderValue1,
        //graduated slider
        label: _currentSliderValue1.round().toString(),
        divisions: 10,
        onChanged: (double newvalue){

          setState((){
            value1 = newvalue.roundToDouble();
            _currentSliderValue1 = newvalue.roundToDouble();
            myScale();

          });
        });
  }

  @override
  Widget build(BuildContext context){
  return Scaffold(appBar: AppBar(title: const Text("Monkey Big, Monkey Small!")),

  body: ListView(padding: const EdgeInsets.all(20.0), children: [

  Column(
  children:[
  Text("Embiggen or ensmallen the ape!"),
  Text(value1.toString()),
  mySlider(),
  myScale()

  ]

  )


  ]));




}
}


//end of scale--------------------------------------------------
class ImageMove extends StatefulWidget {
  const ImageMove({Key? key}) : super(key: key);

  @override
  _ImageMove createState() => _ImageMove();
}

class _ImageMove extends State<ImageMove> {

  double xcord = 0;
  double ycord = 0;
  double _currentSliderValue1 = 0;

  myMove() {
    //alignment is need for height and width
    //provides base point so plotter knows
    //where to take measurements form
    return Align(
        alignment: Alignment.center,
        child: Transform.translate(
            offset: Offset(xcord, ycord),
            child: Image.asset("ape.png")
        ));
  }

  Widget mySlider() {
    return Slider(
        activeColor: Colors.red[800],
        inactiveColor: Colors.redAccent,
        max: 50,
        min: -50,

        value: _currentSliderValue1,
        //graduated slider
        label: _currentSliderValue1.round().toString(),
        divisions: 10,
        onChanged: (double newvalue) {
          setState(() {
            xcord = newvalue.roundToDouble();
            _currentSliderValue1 = newvalue.roundToDouble();
            myMove();
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text("Look at that ape go!")),
        body: ListView(padding: const EdgeInsets.all(20.0), children: [
          Column(
              children: [
                const Text("Where he stops, no one knows."),
                Text(xcord.toString()),
                mySlider(),
                myMove()

              ]

          )


        ]));
  }
}
//end of move-------------------------------------------------