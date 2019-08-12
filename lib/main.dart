import 'package:flutter/material.dart';
import 'pages/page_progress.dart';
import 'pages/page_floating.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Test View'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("自定义进度条"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return PageProgress();
                }));
              },
            ),
            RaisedButton(
              child: Text("floatingActionButton位置"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return PageFloating();
                }));
              },
            )
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
