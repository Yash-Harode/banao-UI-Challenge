import 'package:flutter/material.dart';
import '../../models/list_item_model.dart';

class secondHorizontalListWidget extends StatelessWidget {
  secondHorizontalListWidget({super.key});

  final List<Item> _items = [
    Item(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSl_56OWcmhNiGI6-8vU7REuJBm6LgqbexSyQ&usqp=CAU',
        'LIFESTYLE',
        'A complete guide for your',
        '13 Feb, Sunday'),
    Item(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSl_56OWcmhNiGI6-8vU7REuJBm6LgqbexSyQ&usqp=CAU',
        'WORLING WOMEN',
        'Understanding behaviour',
        '13 Feb, Sunday'),
    Item(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSl_56OWcmhNiGI6-8vU7REuJBm6LgqbexSyQ&usqp=CAU',
        'LIFESTYLE',
        'A complete guide for your',
        '13 Feb, Sunday'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _items.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 243, 242, 242)),
              width: 250, // Adjust the width of each item
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Image.network(
                      _items[index].imageURL, // Example image URL
                      height: 150, // Adjust the height of the image
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(height: 8.0),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        _items[index].subtitle,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 16, 111, 188),
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        _items[index].title,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          _items[index].lesson,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 91, 91, 91),
                          ),
                        ),
                        const SizedBox(
                          width: 45,
                        ),
                        Container(
                          width: 55,
                          height: 20,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(255, 16, 111, 188)),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Text(
                            "Back",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color.fromARGB(255, 16, 111, 188)),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ));
        },
      ),
    );
  }
}
