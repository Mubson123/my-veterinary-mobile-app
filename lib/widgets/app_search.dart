import 'package:get/get.dart';
import 'package:flutter/material.dart';

class AppSearch extends SearchDelegate<String> {
  final _names = <String>[];
  final _searchedNames = <String>[];

  @override
  List<Widget>? buildActions(BuildContext context) => [
    IconButton(icon: const Icon(Icons.clear), onPressed: () {}, )
  ];



  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(icon: const Icon(Icons.arrow_back,), onPressed: () {Get.back();}, );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(color: Colors.lightGreen,);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = _searchedNames;
    return Container(color: Colors.blueGrey,);
  }


}