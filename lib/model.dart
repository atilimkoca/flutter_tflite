import 'package:tflite_flutter/tflite_flutter.dart';

class Model {

    late Interpreter _interpreter;

    Model() {
        _loadModel();
         var samples = [[1.23, 6.54, 7.81 , 3.21, 2.22]];
    }
    
      Iterable? get samples => [[1.23, 6.54, 7.81 , 3.21, 2.22]];
    
    void _loadModel() async {
        _interpreter = await Interpreter.fromAsset('lstmmodel.tflite');
        _interpreter.allocateTensors();
    }

    List<double>classify(List<double> data) {
        var input = List<double>.from(samples!).reshape([1, 187, 1]); // Input dimension
        var output = List<double>.filled(5, 0).reshape([1, 5]); // Output dimension
        
        _interpreter.run(input, output);

      return output[0];
    }
}
