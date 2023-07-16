import 'package:flutter/material.dart';
import './photo_grid.dart';

class Details extends StatelessWidget {
  final String name;
  final String description;
  final List<Map<String, String>> photos;

  const Details({
    Key? key,
    required this.name,
    required this.description,
    required this.photos,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                name,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                description,
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 16),
            PhotoGridWidget(photos: photos),
          ],
        ),
      ),
    );
  }
}
