import 'package:flutter_json_placeholder/constants/global_variables.dart';
import 'package:flutter_json_placeholder/models/user.dart';
import 'package:dio/dio.dart';

class FetchUsers {
  final dio = Dio();
  // fetch users
  Future<List<User>> fetchUsers() async {
    final response = await dio.get('$apiUrl');

    if (response.statusCode == 200) {
      final List<dynamic> data = response.data;
      return data.map((user) => User.fromJson(user)).toList();
    } else {
      throw Exception('Failed to fetch user data');
    }
  }
}
