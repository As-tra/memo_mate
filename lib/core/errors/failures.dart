abstract class Failure {
  final String errorMessage;

  Failure({required this.errorMessage});
}

class CacheFailure extends Failure {
  CacheFailure({required super.errorMessage});
}
