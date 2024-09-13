// Import necessary libraries
import 'package:dio/dio.dart';

import '../constant_networking.dart';

mixin AuthApi on ConstantNetworking {
  /*
  *
  * Create a new account
  *
  * */
  Future<Response> createAccount(
      {required String email, String? fName, String? lName}) async {
    try {
      // Construct the API endpoint URL
      final url = '$baseURL$createAccountEndPoint';

      // Prepare the request data
      final data = {'email': email, 'f_name': fName, 'l_name': lName};

      // Make a POST request to the API endpoint
      final response = await dio.post(url, data: data);

      // Return the response
      return response;
    } on DioException catch (error) {
      // If a DioException occurs, throw a FormatException with the error message from the API response
      throw FormatException(error.response?.data["data"]);
    } catch (error) {
      // If any other exception occurs, throw a generic FormatException
      throw const FormatException("~there error with API");
    }
  }

  /*
  *
  * Login to the application
  *
  * */
  Future<Response> login({required String email}) async {
    try {
      // Construct the API endpoint URL
      final url = '$baseURL$loginEndPoint';

      // Prepare the request data
      final data = {'email': email};

      // Make a POST request to the API endpoint
      final response = await dio.post(url, data: data);

      // Return the response
      return response;
    } on DioException catch (error) {
      // If a DioException occurs, throw a FormatException with the error message from the API response
      throw FormatException(error.response?.data["data"]);
    } catch (error) {
      // If any other exception occurs, throw a generic FormatException
      throw const FormatException("~there error with API");
    }
  }

  /*
  *
  * Verify the account using OTP
  *
  * */
  Future<Response> verify({required String email, required String otp}) async {
    try {
      // Construct the API endpoint URL
      final url = '$baseURL$verifyEndPoint';

      // Prepare the request data
      final data = {'email': email, 'otp': otp};

      // Make a POST request to the API endpoint
      final response = await dio.post(url, data: data);

      // Return the response
      return response;
    } on DioException catch (error) {
      // If a DioException occurs, throw a FormatException with the error message from the API response
      throw FormatException(error.response?.data["data"]);
    } catch (error) {
      // If any other exception occurs, throw a generic FormatException
      throw const FormatException("~there error with API");
    }
  }
}
