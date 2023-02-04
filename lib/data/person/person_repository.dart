import '/data/person/person_provider.dart';
import '/entity/dto/person_dto.dart';
import '/entity/person.dart';

abstract class IPersonRepository {
  Future<List<Person>> getAllPersons();

  Future<Person> getPersonById(String id);

  Future<Person> savePerson(PersonDto personDto);

  Future<Person> updatePersonById(String id, PersonDto personDto);

  Future<dynamic> deletePersonById(String id);
}

class PersonRepository implements IPersonRepository {
  PersonRepository({required this.provider});

  final IPersonProvider provider;

  @override
  Future<List<Person>> getAllPersons() async {
    final response = await provider.getAllPersons('');
    if (response.hasError) {
      return Future.error(response.statusText!);
    }
    return response.body!;
  }

  @override
  Future<Person> getPersonById(String id) async {
    final response = await provider.getPersonById('/$id');
    if (response.hasError) {
      return Future.error(response.statusText!);
    }
    return response.body!;
  }

  @override
  Future<Person> savePerson(PersonDto personDto) async {
    final response = await provider.addPerson('', personDto.toJson());
    if (response.hasError) {
      return Future.error(response.statusText!);
    }
    return response.body!;
  }

  @override
  Future<Person> updatePersonById(String id, PersonDto personDto) async {
    final response = await provider.updatePerson('/$id', personDto.toJson());
    if (response.hasError) {
      return Future.error(response.statusText!);
    }
    return response.body!;
  }

  @override
  Future<dynamic> deletePersonById(String id) async {
    final response = await provider.deletePersonById('/$id');
    if (response.hasError) {
      return Future.error(response.statusText!);
    }
  }
}
