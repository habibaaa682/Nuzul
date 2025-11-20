import 'dart:convert';
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

    final response = await http.post(
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
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      return jsonDecode(response.body);
    } else {
      throw Exception("Signup failed: ${response.body}");
    }
  }
}
