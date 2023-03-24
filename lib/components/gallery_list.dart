// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';

class GalleryList extends StatelessWidget {
  String asset;
  GalleryList({
    required this.asset,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.232,
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          10,
        ),
        border: Border.all(
          color: Colors.transparent,
        ),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            asset,
          ),
        ),
      ),
    );
  }
}
