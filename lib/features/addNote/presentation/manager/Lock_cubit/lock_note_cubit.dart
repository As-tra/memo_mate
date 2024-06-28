import 'package:flutter_bloc/flutter_bloc.dart';

class LockNoteCubit extends Cubit<String> {
  LockNoteCubit() : super('');

  bool locked = false;

  void addLock({required String code}) {
    locked = true;
    emit(code);
  }
}
