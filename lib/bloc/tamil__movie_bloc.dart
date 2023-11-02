import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../Repository/api/api.dart';
import '../Repository/modelclass/tamilmovie.dart';

part 'tamil__movie_event.dart';
part 'tamil__movie_state.dart';

class TamilMovieBloc extends Bloc<TamilMovieEvent, TamilMovieState> {
  late Tamilmovie animeModel;
  MovieApi animeApi=MovieApi();
  TamilMovieBloc() : super(TamilMovieInitial()) {
    on<TamilMovieEvent>((event, emit) async{
      emit(TamilMovieLoading());
      try{

        animeModel = await animeApi.getMovie();
        emit(TamilMovieLoaded());
      } catch(e){
        print(e);
        emit(TamilMovieError());}
    });
  }
}
