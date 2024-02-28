import 'package:fit_clock/events/end_event.dart';
import 'package:fit_clock/events/exercicio_event.dart';
import 'package:fit_clock/events/start_event.dart';

import '../events/treino_event.dart';
import '../model/treino.dart';

class TreinoController {


  List<Treino> treinoTimers;

  TreinoController({required this.treinoTimers});

  Stream<TreinoEvent> start() async* {
    yield StartEvent();

    for(Treino treino in treinoTimers){
      for (int seconds = treino.seconds; seconds >= 0; seconds--){
        await Future.delayed(const Duration(seconds: 1));
        yield ExercicioEvent(treino: treino, now: seconds);
      }
    }

    yield EndEvent();

}

}