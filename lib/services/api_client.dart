import 'package:dio/dio.dart';

class ApiClient {
  final Dio _dio = Dio();

  Future<Response> registerUser(Map<String, dynamic>? userData) async {
    try {
      Response response = await _dio.post(
          'https://api.loginradius.com/identity/v2/auth/register', //ENDPONT URL
          data: userData, //REQUEST BODY
          queryParameters: {'apikey': 'YOUR_API_KEY'}, //QUERY PARAMETERS
          options: Options(headers: {
            'X-LoginRadius-Sott': 'YOUR_SOTT_KEY', //HEADERS
          }));
      //returns the successful json object
      return response.data;
    } on DioException catch (e) {
      //returns the error object if there is
      return e.response!.data;
    }
  }

  Future<Response> login(String email, String password) async {
    try {
      Response response = await _dio.post(
        'https://api.loginradius.com/identity/v2/auth/login',
        data: {'email': email, 'password': password},
        queryParameters: {'apikey': 'YOUR_API_KEY'},
      );
      //returns the successful user data json object
      return response.data;
    } on DioException catch (e) {
      //returns the error object if any
      return e.response!.data;
    }
  }

  //GET USER PROFILE DATA
  Future<Response> getUserProfileData(String accessToken) async {
    try {
      Response response = await _dio.get(
        'https://api.loginradius.com/identity/v2/auth/account',
        queryParameters: {'apikey': 'YOUR_API_KEY'},
        options: Options(
          headers: {
            'Authorization': 'Bearer ${accessToken}',
          },
        ),
      );
      return response.data;
    } on DioException catch (e) {
      return e.response!.data;
    }
  }

  Future<Response> logout(String accessToken) async {
    //IMPLEMENT USER LOGOUT
    try {
      Response response = await _dio.get(
        'https://api.loginradius.com/identity/v2/auth/access_token/InValidate',
        queryParameters: {'apikey': 'YOUR_API_KEY'},
        options: Options(
          headers: {'Authorization': 'Bearer ${accessToken}'},
        ),
      );
      return response.data;
    } on DioException catch (e) {
      return e.response!.data;
    }
  }
}
