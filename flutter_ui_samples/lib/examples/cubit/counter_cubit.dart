import 'package:flutter_bloc/flutter_bloc.dart';
part 'cubit_state.dart';

class CounterCubit extends Cubit<CubitState> {
  CounterCubit() : super(const CubitState(value: 0, hasIncremented: 0));

  void incrementCounter() {
    emit(CubitState(value: state.value + 1, hasIncremented: 0));
  }

  void decrementCounter() {
    emit(
      CubitState(
        value: (state.value > 1) ? state.value - 1 : 0,
        hasIncremented: 1,
      ),
    );
  }

  void resetCounter() {
    emit(CubitState(value: 0, hasIncremented: 2));
  }
}
