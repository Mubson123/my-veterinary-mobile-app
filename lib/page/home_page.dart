import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:myveterinary/navigation/routes.dart';
import '/controller/animal_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text('MyVeterinary'),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,//Theme.of(context).primaryColor,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: [
          IconButton( icon: const Icon(Icons.more_vert), onPressed: () {},)
        ],
      ),
      body: SafeArea(
          child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Container();
              })),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Get.toNamed(Routes.animalFirstRegistrationPage);
        },
      ),
    );
  }
}
