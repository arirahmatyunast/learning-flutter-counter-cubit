import 'package:bloc/bloc.dart';

class CounterCubtit extends Cubit<int> {
  CounterCubtit() : super(0); // super memanggil dari counter cubit
  void increment() => emit(state + 1); // emit untuk mengupdate state

  void decrement() {
    emit(state - 2);
  }

  void kali() {
    emit(state * 2);
  }

  void reset() {
    emit(0);
  }
}
