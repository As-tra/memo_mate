part of 'label_cubit.dart';


sealed class LabelState {}

final class LabelInitial extends LabelState {}

final class LabelAdded extends LabelState {}


final class LabelRemoved extends LabelState {}
