import 'package:flutter_bloc/flutter_bloc.dart';

class LockNoteCubit extends Cubit<String> {
  LockNoteCubit() : super('');

  bool locked = false;
  int? code;

  void addLock({required String newValue}) {
    locked = true;
    code = int.parse(newValue);
    emit(newValue);
  }
}
