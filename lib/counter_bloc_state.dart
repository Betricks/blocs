part of 'counter_bloc_bloc.dart';

abstract class CounterBlocState extends Equatable {
  const CounterBlocState();
  
  @override
  List<Object> get props => [];
}

class CounterBlocInitial extends CounterBlocState {}
