import 'package:fit_clock/events/treino_event.dart';

import '../model/treino.dart';

class ExercicioEvent implements TreinoEvent {
  Treino treino;
  int now;

  ExercicioEvent({required this.treino, required this.now});
}
