import 'counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitialState());
  int counterTeamA = 0;
  int counterTeamB = 0;

 void teamIncremment(
      {required String team, String? clear, required int buttonNumber}) {
    if (team == 'A') {
      counterTeamA += buttonNumber;
      emit(CounterAIncerementState());
    } else if (team == 'B') {
      counterTeamB += buttonNumber;
      emit(CounterBIncerementState());
    }
  }
 void teamInitial() {
      counterTeamA = 0;
      counterTeamB = 0;
      emit(CounterInitialState());
    }
}
