import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies_app/api/api.dart';
import 'package:movies_app/models/person.dart';
import 'package:movies_app/screens/person_details_screen.dart';
import 'package:movies_app/widgets/index_number.dart';

class PopularPersonItem extends StatelessWidget {
  const PopularPersonItem({
    Key? key,
    required this.person,
    required this.index,
  }) : super(key: key);

  final Person person;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () => Get.to(
            PersonDetailsScreen(person: person),
          ),
          child: Container(
            margin: const EdgeInsets.only(left: 12),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                Api.imageBaseUrl + person.profilePath,
                fit: BoxFit.cover,
                height: 250,
                width: 180,
                errorBuilder: (_, __, ___) => const Icon(
                  Icons.broken_image,
                  size: 180,
                ),
                // You can use a placeholder widget for loading here
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomLeft,
          child: IndexNumber(number: index),
        )
      ],
    );
  }
}
