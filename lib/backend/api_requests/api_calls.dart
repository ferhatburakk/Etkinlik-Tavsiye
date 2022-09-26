import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class GetArtistNamesCall {
  static Future<ApiCallResponse> call({
    String artistName = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getArtistNames',
      apiUrl:
          'https://api.musixmatch.com/ws/1.1/artist.search?q_artist=${artistName}&apikey=ab895c2b248a6780f1898d6ed21b7b39',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }

  static dynamic artlistList(dynamic response) => getJsonField(
        response,
        r'''$.message.body.artist_list''',
      );
}

class SendArtistNameToAPICall {
  static Future<ApiCallResponse> call({
    String userID = '',
    String artistName = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'sendArtistNameToAPI',
      apiUrl:
          'https://concert-recommendation-api.herokuapp.com/getSongRecommendations?userid=${userID}&singername=${artistName}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class SaveUserToDatasetApiCall {
  static Future<ApiCallResponse> call({
    String userID = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'saveUserToDatasetApi',
      apiUrl:
          'https://concert-recommendation-api.herokuapp.com/saveUser?userid=${userID}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class GetCinemaRecommendationCall {
  static Future<ApiCallResponse> call({
    String filmName = '',
    String uid = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getCinemaRecommendation',
      apiUrl:
          'https://film-recommendation-api.herokuapp.com/getFilmRecommendation?filmName=${filmName}&uid=${uid}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class SearchFilmsCall {
  static Future<ApiCallResponse> call({
    String searchedFilmName = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'searchFilms',
      apiUrl:
          'http://api.themoviedb.org/3/search/movie?api_key=0bae694d311cd87f04fa14c8a7739a91&query=${searchedFilmName}',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }

  static dynamic results(dynamic response) => getJsonField(
        response,
        r'''$.results''',
      );
}
