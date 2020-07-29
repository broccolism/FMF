import 'package:flutter/material.dart';
import 'package:managing_state_more/counter_bloc.dart';
import 'package:managing_state_more/counter_notifier.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  CounterBloc bloc;

  // for bloc
  @override
  void initState() {
    bloc = Provider.of<CounterBloc>(context, listen: false);
    super.initState();
  }

  @override
  void dispose() {
    // 얘를 안 해야 하는 경우도 있음
    bloc.dispose(); // 얘도 해야 정상 종료됨 (에러 날 수 있음)
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BLoC'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: TextStyle(color: Colors.black),
            ),
            StreamBuilder<int>(
                stream: bloc.counterStream,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    // 맨 처음에 null 넣어놔서
                    return Text(snapshot.data.toString());
                  } else {
                    // else 안 해주면 에러남 ㅋ
                    return Container();
                  }
                }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: bloc.increaseCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
