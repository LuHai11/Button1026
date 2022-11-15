import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Button1026'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Colors.white,
    minimumSize: Size(88, 44),
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
    backgroundColor: Colors.blueGrey,
  );

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
        child:
        Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 250),
            child:ElevatedButton(onPressed: (){
              final snackBar1 = SnackBar(
                content: Text('你按了ElevatedButton'),
                action: SnackBarAction(
                  label: 'Toast訊息',
                  onPressed:() =>Fluttertoast.showToast(msg: '你按下snackBar'),
                ),);
              ScaffoldMessenger.of(context).showSnackBar(snackBar1);
            }, child: Text('ElevatedButton')),
            ),

            TextButton(
                style: flatButtonStyle,
                onPressed: (){
                  final snackBar1 = SnackBar(
                    content: Text('你按了flatButton'),
                    action: SnackBarAction(
                      label: 'Toast訊息',
                      onPressed:() =>Fluttertoast.showToast(msg: '你按下snackBar'),
                    ),);
                  ScaffoldMessenger.of(context).showSnackBar(snackBar1);
            }, child:Text('FlatButton')),

            OutlinedButton(onPressed: (){
              final snackBar2 = SnackBar(
                content: Text('你按了OutlinedButton'),
                action: SnackBarAction(
                  label: 'Toast訊息',
                  onPressed:() =>Fluttertoast.showToast(msg: '你按下snackBar'),
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar2);
            }, child: Text('OutlinedButton')),

            IconButton(onPressed: (){
              final snackBar3 = SnackBar(
                content: Text('你按了IconButton'),
                action: SnackBarAction(
                  label: 'Toast訊息',
                  onPressed:() =>Fluttertoast.showToast(msg: '你按下snackBar'),
                ),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar3);
            }, icon: Icon(Icons.send)),

            FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: (){
                final snackBar1 = SnackBar(
                  content: Text('你按了FloatingActionButton'),
                  action: SnackBarAction(
                    label: 'Toast訊息',
                    onPressed:() =>Fluttertoast.showToast(msg: '你按下snackBar'),
                  ),);
                ScaffoldMessenger.of(context).showSnackBar(snackBar1);
              },
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.save),
                label: Text('ElevatedButton.icon'),
                onPressed: (){
                final snackBar1 = SnackBar(
                  content: Text('你按了ElevatedButton.icon'),
                  action: SnackBarAction(
                    label: 'Toast訊息',
                    onPressed:() =>Fluttertoast.showToast(msg: '你按下snackBar'),
                ),);
              ScaffoldMessenger.of(context).showSnackBar(snackBar1);
            }
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
