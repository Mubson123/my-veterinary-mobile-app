import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:openapi/openapi.dart';
import '../navigation/routes.dart';
import '../widgets/app_card.dart';
import '/controller/animal_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.controller}) : super(key: key);
  final AnimalController controller;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController? scrollController = ScrollController();
  @override
  void initState() {

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey,
        child: FutureBuilder<List<ResponseAnimal>>(
          future: widget.controller.getAnimalsByOwnerId(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Center(
                  child: CircularProgressIndicator(color: Colors.red));
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                  child: CircularProgressIndicator(color: Colors.green));
            } else if (snapshot.hasData) {
              final animal = snapshot.data!;
              return ListView.builder(
                controller: scrollController,
                itemCount: animal.length,
                itemBuilder: (context, index) {
                  return AppCard(
                    imageUrl: 'assets/images/bulldog.jpeg',
                    name: animal[index].name,
                    status: false,
                    followers: 554,
                    shares: 123,
                    ratings: 2345,
                    pubDate: '12 Sep 17',
                  );
                },
              );
            }
            return Center(
                child: Text(
              'Something is wrong !',
              style: Theme.of(context).textTheme.bodyText1,
            ));
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Get.toNamed(Routes.animalFirstRegistrationPage);
        },
      ),
    );
  }
}
