import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:newproject/src/app_widget.dart';
import 'package:newproject/src/home/home_widget.dart';
import 'package:newproject/src/todo/todo_list.dart';

void main() {
  //Linha adicionada depois de ter dado upgrade flutter 
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    initialRoute: "/",
    routes: {
      '/': (context) => MyApp(),
      '/home': (context) => Home(),
      'Todos': (context) => TodoList()
    },
  ));
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
