import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "http://10.0.2.2:5026";

  Future<dynamic> login(String userName, String password) async {
    final url = Uri.parse("$baseUrl/api/Account/login");

    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"email": userName, "password": password}),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      log({'ApiService Login failed:': response.body}.toString());
      throw Exception("Login failed: ${response.body}");
    }
  }

  Future<dynamic> signup({
    required String firstName,
    required String lastName,
    required String userName,
    required String phoneNumber,
    required String email,
    required String password,
    required int userType,
  }) async {
    final url = Uri.parse("$baseUrl/api/Account/register");

    try {
      final response = await http
          .post(
            url,
            headers: {"Content-Type": "application/json"},
            body: jsonEncode({
              "firstName": firstName,
              "lastName": lastName,
              "userName": userName,
              "phoneNumber": phoneNumber,
              "email": email,
              "password": password,
              "userType": userType,
            }),
          )
          .timeout(const Duration(seconds: 10));

      log("🔵 Signup Response: ${response.body}");

      if (response.statusCode == 200 || response.statusCode == 201) {
        try {
          return jsonDecode(response.body);
        } catch (e) {
          return {"message": "User registered successfully"};
        }
      }

      if (response.statusCode == 400) {
        try {
          final data = jsonDecode(response.body);

          if (data is Map && data.containsKey("errors")) {
            final errors = data["errors"] as Map;
            final firstError = errors.values.first[0];
            throw Exception(firstError);
          }

          if (data is List) {
            throw Exception(data.first["description"]);
          }

          throw Exception(data.toString());
        } catch (_) {
          throw Exception("Invalid input data");
        }
      }

      if (response.statusCode >= 500) {
        throw Exception("Server error, please try again later");
      }

      throw Exception("Signup failed: ${response.body}");
    } on SocketException {
      throw Exception("No internet connection");
    } on HttpException {
      throw Exception("Couldn't reach the server");
    } on FormatException {
      throw Exception("Invalid server response");
    } on TimeoutException {
      throw Exception("Server timeout, try again later");
    } catch (e) {
      log(" SIGNUP ERROR: $e");
      throw Exception(e.toString());
    }
  }
}
