import 'package:flutter/material.dart';

class Griditem extends StatelessWidget {
  final String s;
  final IconData i;
  Griditem({
    super.key,
    required this.s,
    required this.i,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          padding: const EdgeInsets.all(15),
          height: 52,
          width: 175,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border:
                Border.all(color: Color.fromARGB(255, 16, 111, 188), width: 2),
          ),
          child: Row(
            children: [
              Icon(
                i,
                color: Color.fromARGB(255, 16, 111, 188),
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                s,
                style: const TextStyle(
                    color: Color.fromARGB(255, 16, 111, 188),
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
