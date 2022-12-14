import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc() : super(CalculatorState()) {
    on<CalculatorEvent>((event, emit) => onCalculatorEvent(event, emit));
  }
  void onCalculatorEvent(CalculatorEvent event, Emitter<CalculatorState> emit) {
    state.applyCommand(event.command);
    return emit(state);
  }
}
