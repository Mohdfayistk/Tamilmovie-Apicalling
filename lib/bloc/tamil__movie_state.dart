part of 'tamil__movie_bloc.dart';

@immutable
abstract class TamilMovieState {}

class TamilMovieInitial extends TamilMovieState {}
class TamilMovieLoading extends TamilMovieState {}
class TamilMovieLoaded extends TamilMovieState {}
class TamilMovieError extends TamilMovieState{}