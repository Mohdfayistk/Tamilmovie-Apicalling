import 'dart:convert';


import 'package:http/http.dart';



import '../modelclass/tamilmovie.dart';
import 'api_client.dart';




class MovieApi {
  ApiClient apiClient = ApiClient();


  Future<Tamilmovie> getMovie() async {
    String trendingpath = 'https://advanced-movie-search.p.rapidapi.com/genre/movie/list?';
    var body = {

    };
    Response response = await apiClient.invokeAPI(trendingpath, 'GET', body);

    return Tamilmovie.fromJson(jsonDecode(response.body));
  }
}