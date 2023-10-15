// ignore_for_file: non_constant_identifier_names

import 'package:dextra_consulting_task/util/dimensions.dart';
import 'package:dextra_consulting_task/util/styles.dart';
import 'package:flutter/material.dart';

class Selectionbtn extends StatelessWidget {
  final Function() onPressed;
  final String title;

  const Selectionbtn({
    Key? key,
    required this.onPressed,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimensions.RADIUS_EXTRA_LARGE),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
       // Set the button color
          padding: EdgeInsets.all(16.0), // Set padding
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0), // Set border radius
          ),
        ),
        child: Text(
          title,
          style:robotoMedium)
      ),
    );
  }
}
