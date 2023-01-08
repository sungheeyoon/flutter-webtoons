import 'package:flutter/material.dart';

class Webtoon extends StatelessWidget {
  final String title, thumb, id;
  const Webtoon(
      {super.key, required this.title, required this.thumb, required this.id});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Container(
            width: 250,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 4,
                      offset: const Offset(8, 8),
                      color: Colors.black.withOpacity(0.4))
                ]),
            child: Image.network(thumb),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }
}
