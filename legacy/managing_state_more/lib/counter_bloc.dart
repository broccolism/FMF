import 'package:rxdart/rxdart.dart';

class CounterBloc {
  final counterSubject = BehaviorSubject<int>.seeded(0);
  Stream get counterStream => counterSubject.stream; // for UI

  void dispose() async {
    await counterSubject.close();
  }

  int _counter = 0;

  void increaseCounter() {
    _counter++;
    counterSubject.sink.add(_counter); // stream에 데이터를 던진 것!
  }
}
