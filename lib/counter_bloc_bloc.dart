import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_bloc_event.dart';
part 'counter_bloc_state.dart';

class CounterBloc extends Bloc<CounterBlocEvent, int> {
  CounterBloc() : super(0) {
    on<incremetEvent>(_increment);
    on<decremetEvent>(_decrement);
  }

  void _increment(incremetEvent event, Emitter<int> emit) {
    emit(state + 1);
  }

  void _decrement(decremetEvent event, Emitter<int> emit) {
    emit(state - 1);
  }
}
