import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for AppMediaControllerApi
void main() {
  final instance = Openapi().getAppMediaControllerApi();

  group(AppMediaControllerApi, () {
    //Future<ResponseMedia> deleteAll() async
    test('test deleteAll', () async {
      // TODO
    });

    //Future<ResponseMedia> deleteMediaByAnimalId(String id) async
    test('test deleteMediaByAnimalId', () async {
      // TODO
    });

    //Future<ResponseMedia> deleteMediaById(String id) async
    test('test deleteMediaById', () async {
      // TODO
    });

    //Future<ResponseMedia> deleteMediaByPersonId(String id) async
    test('test deleteMediaByPersonId', () async {
      // TODO
    });

    //Future<BuiltList<ResponseMedia>> getAllMedia() async
    test('test getAllMedia', () async {
      // TODO
    });

    //Future<BuiltList<ResponseMedia>> getAllMediaByAnimalId(String id) async
    test('test getAllMediaByAnimalId', () async {
      // TODO
    });

    //Future<BuiltList<ResponseMedia>> getAllMediaByPersonId(String id) async
    test('test getAllMediaByPersonId', () async {
      // TODO
    });

    //Future<BuiltList<String>> getMediaById(String id) async
    test('test getMediaById', () async {
      // TODO
    });

    //Future<BuiltList<ResponseMedia>> storeMediaByAninalId(String id, BuiltList<MultipartFile> files) async
    test('test storeMediaByAninalId', () async {
      // TODO
    });

    //Future<BuiltList<ResponseMedia>> storeMediaByPersonId(String id, BuiltList<MultipartFile> files) async
    test('test storeMediaByPersonId', () async {
      // TODO
    });

    //Future<ResponseMedia> updateMediaById(String id, MultipartFile file) async
    test('test updateMediaById', () async {
      // TODO
    });

  });
}
