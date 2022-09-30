part of 'calculator_bloc.dart';

abstract class CalculatorState extends Equatable {
  const CalculatorState();
  
  @override
  List<Object> get props => [];
}

class CalculatorInitial extends CalculatorState {}
