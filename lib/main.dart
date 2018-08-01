import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Material App"),
        ),
        body: ListView(
            children: List.generate(10, (index) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => MyHomePageDetail("assets/screen$index.jpg")));
                },
                child: Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset("assets/screen$index.jpg"),
                      Container(
                          margin: EdgeInsets.all(10.0),
                          child: ListTile(
                            title: Text("screen$index.jpg"),
                            leading: Icon(Icons.person),
                            subtitle: Text("サブタイトル"),
                          )),
                    ],
                  ),
                ),
              );
            })));
  }
}

class MyHomePageDetail extends StatefulWidget {

  MyHomePageDetail(this._imageName);
  final String _imageName;

  @override
  _MyHomePageDetailState createState() => new _MyHomePageDetailState(_imageName);
}

class _MyHomePageDetailState extends State<MyHomePageDetail> {

  _MyHomePageDetailState(this._imageName);
  final String _imageName;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Material App"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset(_imageName),
              Container(
                child: ListTile(
                  title: Text(_imageName),
                  leading: Icon(Icons.person),
                  subtitle: Text("お写真ですこれは"),
                ),
              )
            ],
          ),
        ));
  }
}
