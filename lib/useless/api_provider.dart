import 'dart:convert';
import '/entity/person.dart';
import 'package:http/http.dart';

abstract class IApiProvider {
  String baseUrl = '';

  Future findAll();

  Future findById(String id);

  Future findByEmail(String email);

  Future save(Map<String, dynamic> body);

  Future updateById(String id, Map<String, dynamic> body);

  Future deleteById(String id);
}

class ApiProvider implements IApiProvider {

  @override
  String baseUrl = '';

  @override
  Future findAll() async {
    final url = Uri.parse(baseUrl);
    final response = await get(url);
    if (response.statusCode == 200) {
      return Person.mapFromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load all objects');
    }
  }

  @override
  Future findByEmail(String email) async {
    final url = Uri.parse('$baseUrl/$email');
    final response = await get(url);
    if (response.statusCode == 200) {
      return Person.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load object');
    }
  }

  @override
  Future findById(String id) async {
    final url = Uri.parse('$baseUrl/$id');
    final response = await get(url);
    if (response.statusCode == 200) {
      return Person.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to find object');
    }
  }

  @override
  Future save(Map<String, dynamic> body) async {
    final url = Uri.parse(baseUrl);
    final response = await post(url);
    if (response.statusCode == 201) {
      return Person.fromJson(jsonDecode(response.body));
    } else {
      throw Exception(response.statusCode);
    }
  }

  @override
  Future updateById(String id, Map<String, dynamic> body) async {
    final url = Uri.parse('$baseUrl/$id');
    final response = await put(url, body: body);
    if (response.statusCode == 200) {
      return Person.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to update');
    }
  }

  @override
  Future deleteById(String id) async {
    final url = Uri.parse('$baseUrl/$id');
    final response = await delete(url);
    if (response.statusCode != 200) {
      throw Exception('Failed to delete object');
    }
  }

}
