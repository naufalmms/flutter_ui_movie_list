// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_ui_movie_list/utils/colors.dart';

// ignore: must_be_immutable
class CustomCardThumbnail extends StatelessWidget {
  String imageAssets;
  CustomCardThumbnail({
    Key? key,
    required this.imageAssets,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: kButtonColor.withOpacity(0.25),
            blurRadius: 5,
            spreadRadius: 1,
            offset: const Offset(0, 3),
          )
        ],
        borderRadius: BorderRadius.circular(20),
        image:
            DecorationImage(image: AssetImage(imageAssets), fit: BoxFit.cover),
      ),
      margin: const EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 30),
    );
  }
}
