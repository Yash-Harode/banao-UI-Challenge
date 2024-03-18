import 'package:flutter/material.dart';
import '../../models/list_item_model.dart';

class thirdHorizontalListWidget extends StatelessWidget {
  thirdHorizontalListWidget({super.key});

  final List<Item> _items = [
    Item(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSl_56OWcmhNiGI6-8vU7REuJBm6LgqbexSyQ&usqp=CAU',
        'BABYCARE',
        'Understanding of human behaviour',
        '3 min'),
    Item(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSl_56OWcmhNiGI6-8vU7REuJBm6LgqbexSyQ&usqp=CAU',
        'BABYCARE',
        'Understanding of human behaviour',
        '1 min'),
    Item(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSl_56OWcmhNiGI6-8vU7REuJBm6LgqbexSyQ&usqp=CAU',
        'LIFESTYLE',
        'Understanding of human behaviour',
        '3 min'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 264,
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
                      height: 161, // Adjust the height of the image
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
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          _items[index].lesson,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 91, 91, 91),
                          ),
                        ),
                        const SizedBox(width: 125),
                        const Icon(
                          Icons.lock_outlined,
                          color: Color.fromARGB(255, 91, 91, 91),
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
