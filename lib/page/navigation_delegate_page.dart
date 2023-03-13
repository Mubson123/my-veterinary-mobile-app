import 'package:flutter/material.dart';
import '../controller/app_state_controller.dart';
import '/utils/util_export.dart';
import '../widgets/app_search.dart';
import 'home_page.dart';

class NavigationDelegatePage extends StatefulWidget {
  const NavigationDelegatePage({Key? key, required this.controller}) : super(key: key);
  final AppStateController controller;

  @override
  State<NavigationDelegatePage> createState() => _NavigationDelegatePageState();
}

class _NavigationDelegatePageState extends State<NavigationDelegatePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 2.0,
          centerTitle: true,
          title: const Text(AppUtilsName.title),
          foregroundColor: Theme.of(context).primaryColor,
          leading: Builder(
            builder: (context) => IconButton(
              icon: Icon(
                Icons.menu,
                color: Theme.of(context).primaryColor,
              ),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                showSearch(context: context, delegate: AppSearch());
              },
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
            labelColor: Theme.of(context).primaryColor,
            indicatorColor: Theme.of(context).primaryColor,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  color: Theme.of(context).primaryColor,
                ),
                text: 'Home',
              ),
              Tab(
                icon: Icon(
                  Icons.star,
                  color: Theme.of(context).primaryColor,
                ),
                text: 'Feed',
              ),
              Tab(
                icon: Icon(
                  Icons.play_circle,
                  color: Theme.of(context).primaryColor,
                ),
                text: 'Videos',
              ),
              Tab(
                icon: Icon(
                  Icons.settings,
                  color: Theme.of(context).primaryColor,
                ),
                text: 'Settings',
              ),
            ],
          ),
        ),
        body: TabBarView(
              clipBehavior: Clip.antiAlias,
              children: [
                HomePage(controller: widget.controller.animalController,),
                Container(color: Colors.blueAccent,),
                Container(color: Colors.green,),
                Container(color: Colors.yellow,),
              ],
            ),
      ),
    );
  }
}
