import 'package:dio/dio.dart' as dio;
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';


class AppMediaController extends GetxController {
  final _api = Openapi().getAppMediaControllerApi();
  final appMediaFormKey = GlobalKey<FormBuilderState>();

  @override
  void onInit() {
    getAllMedia();
    super.onInit();
  }

  Future<List<ResponseMedia>> getAllMedia() async {
    final response = await _api.getAllMedia();
    if (response.statusCode != 200) {
      throw Exception();
    } else if (response.data == null) {
      return [];
    }
    return response.data!.toList();
  }

  Future<List<ResponseMedia>> storeMediaByPersonId(String id, List<dio.MultipartFile> files) async {
    final response = await _api.storeMediaByPersonId(id: id, files: BuiltList(files));
    if (response.statusCode != 204) {
      throw Exception();
    } else if (response.data == null) {
      return [];
    }
    return response.data!.toList();
  }

  Future<List<ResponseMedia>> storeMediaByAnimalId(String id, List<dio.MultipartFile> files) async {
    final response = await _api.storeMediaByAninalId(id: id, files: BuiltList(files));
    if (response.statusCode != 204) {
      throw Exception();
    } else if (response.data == null) {
      return [];
    }
    return response.data!.toList();
  }

  Future<List<String>> getMediaById(String id) async {
    final response = await _api.getMediaById(id: id);
    if (response.statusCode != 200) {
      throw Exception();
    } else if (response.data == null) {
      return [];
    }
    return response.data!.toList();
  }

  Future<List<ResponseMedia>> getAllMediaByPersonId(String id) async {
    final response = await _api.getAllMediaByPersonId(id: id);
    if (response.statusCode != 200) {
      throw Exception();
    } else if (response.data == null) {
      return [];
    }
    return response.data!.toList();
  }

  Future<List<ResponseMedia>> getAllMediaByAnimalId(String id) async {
    final response = await _api.getAllMediaByAnimalId(id: id);
    if (response.statusCode != 200) {
      throw Exception();
    } else if (response.data == null) {
      return [];
    }
    return response.data!.toList();
  }

  Future<ResponseMedia> updateMediaById(String id, dio.MultipartFile file) async {
    final response = await _api.updateMediaById(id: id, file: file);
    if (response.statusCode != 201) {
      throw Exception();
    }
    return response.data!;
  }

  Future<dynamic> deleteMediaById(String id) async {
    final response = await _api.deleteMediaById(id: id);
    if (response.statusCode != 201) {
      throw Exception();
    }
    return response.data!;
  }

  Future<dynamic> deleteMediaByPersonId(String id) async {
    final response = await _api.deleteMediaByPersonId(id: id);
    if (response.statusCode != 201) {
      throw Exception();
    }
    return response.data!;
  }

  Future<dynamic> deleteMediaByAnimalId(String id) async {
    final response = await _api.deleteMediaByAnimalId(id: id);
    if (response.statusCode != 201) {
      throw Exception();
    }
    return response.data!;
  }
}
