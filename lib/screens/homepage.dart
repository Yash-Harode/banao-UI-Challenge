import 'package:banao_1/widgets/grid_item.dart';
import 'package:banao_1/widgets/listview/second_listview_widget.dart';
import 'package:banao_1/widgets/listview/third_listview_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/listview/first_listview_widget.dart';
import '../widgets/nav_bar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 50),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.menu,
                  color: Color.fromARGB(255, 91, 91, 91),
                ),
              ),
              SizedBox(width: 270),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.question_answer_outlined,
                  color: Color.fromARGB(255, 91, 91, 91),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.notifications_outlined,
                  color: Color.fromARGB(255, 91, 91, 91),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0, left: 8),
            child: Text(
              "Hello, Priya!",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 3.0, left: 8),
            child: Text(
              "What do you wanna learn today?",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Griditem(s: "Programs", i: Icons.book_rounded),
                Griditem(s: "Get Help", i: Icons.question_mark_rounded),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Griditem(s: "Learn", i: Icons.menu_book_outlined),
                Griditem(s: "DD Tracker", i: Icons.track_changes_outlined),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Program For You",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              width: 126,
            ),
            const Text("View All",
                style: TextStyle(
                  color: Color.fromARGB(255, 91, 91, 91),
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_sharp,
                  color: Color.fromARGB(255, 91, 91, 91),
                ))
          ]),
          fisrstHorizontalListWidget(),
          const SizedBox(
            height: 20,
          ),
          Row(children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Events and Experiences",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              width: 65,
            ),
            const Text("View All",
                style: TextStyle(
                  color: Color.fromARGB(255, 91, 91, 91),
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_sharp,
                  color: Color.fromARGB(255, 91, 91, 91),
                ))
          ]),
          secondHorizontalListWidget(),
          const SizedBox(
            height: 20,
          ),
          Row(children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Lessons for you",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              width: 130,
            ),
            const Text("View All",
                style: TextStyle(
                  color: Color.fromARGB(255, 91, 91, 91),
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward_sharp,
                  color: Color.fromARGB(255, 91, 91, 91),
                ))
          ]),
          thirdHorizontalListWidget(),
        ]),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
