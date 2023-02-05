import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for PersonControllerApi
void main() {
  final instance = Openapi().getPersonControllerApi();

  group(PersonControllerApi, () {
    //Future<ResponsePerson> addPerson(PersonDto personDto) async
    test('test addPerson', () async {
      // TODO
    });

    //Future<ResponsePerson> deleteAllPerson() async
    test('test deleteAllPerson', () async {
      // TODO
    });

    //Future<ResponsePerson> deletePerson(String id) async
    test('test deletePerson', () async {
      // TODO
    });

    //Future<BuiltList<ResponsePerson>> findAllPersons() async
    test('test findAllPersons', () async {
      // TODO
    });

    //Future<ResponsePerson> findPersonById(String id) async
    test('test findPersonById', () async {
      // TODO
    });

    //Future<ResponsePerson> updatePerson(String id, PersonDto personDto) async
    test('test updatePerson', () async {
      // TODO
    });

  });
}
