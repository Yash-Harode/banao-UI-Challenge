import 'package:flutter/material.dart';
import '../../models/list_item_model.dart';

class fisrstHorizontalListWidget extends StatelessWidget {
  fisrstHorizontalListWidget({super.key});

  final List<Item> _items = [
    Item(
        'https://img.freepik.com/free-vector/hand-drawn-breastmilk-illustration_52683-78506.jpg?w=740&t=st=1710708117~exp=1710708717~hmac=189f6a678a37557dd7a250ba052f3edadbd7bf011175031d4fb0276450f41adc',
        'LIFESTYLE',
        'A complete guide for your',
        '10 lessons'),
    Item(
        'https://banner2.cleanpng.com/20240110/css/transparent-vector-draw-character-design-black-girl-afro-hairs-bright-bold-cartoon-of-woman-with-afro659e888fc6bbb4.984760991704888463814.jpg',
        'WORLING WOMEN',
        'Understanding behaviour',
        '12 Lessons'),
    Item(
        'https://img.freepik.com/free-vector/hand-drawn-breastmilk-illustration_52683-78506.jpg?w=740&t=st=1710708117~exp=1710708717~hmac=189f6a678a37557dd7a250ba052f3edadbd7bf011175031d4fb0276450f41adc',
        'LIFESTYLE',
        'A complete guide for your',
        '10 Lessons'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 255,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _items.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 243, 242, 242)),
              width: 250,
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
                    Text(
                      _items[index].lesson,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 91, 91, 91),
                      ),
                    ),
                  ],
                ),
              ));
        },
      ),
    );
  }
}
