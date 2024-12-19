import 'dart:async';
import 'dart:math';

class RandomNumberBloc {
  // StreamControler for input event
  final _generateRandomController = StreamController<void>();
  // StramController for output
  final _randomNumberController = StreamController<int>();
  // Input sink
  Sink<void> get generateRandom => _generateRandomController.sink;
  // Output Stream
  Stream<int> get randomNumber => _randomNumberController.stream;
  // _secondStreamController.sink;

  RandomNumberBloc() {
    _generateRandomController.stream.listen((_) {
      final random = Random().nextInt(10);
      _randomNumberController.sink.add(random);
    });
  }

  void dispose() {
    _generateRandomController.close();
    _randomNumberController.close();
  }
}