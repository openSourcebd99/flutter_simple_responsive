import 'package:flutter/material.dart';
import '../components/details.dart';
import '../components/profile_picture.dart';

class ContentWidgets extends StatelessWidget {
  final Function(BuildContext, List<Widget>) layoutBuilder;

  const ContentWidgets({
    Key? key,
    required this.layoutBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final networkImages = [
      {
        'src': 'https://images.unsplash.com/photo-1495819903255-00fdfa38a8de',
        'caption': 'Caption 1'
      },
      {
        'src': 'https://images.unsplash.com/photo-1495819903255-00fdfa38a8de',
        'caption': 'Caption 2'
      },
      {
        'src': 'https://images.unsplash.com/photo-1495819903255-00fdfa38a8de',
        'caption': 'Caption 3'
      },
      {
        'src': 'https://images.unsplash.com/photo-1495819903255-00fdfa38a8de',
        'caption': 'Caption 4'
      },
      {
        'src': 'https://images.unsplash.com/photo-1495819903255-00fdfa38a8de',
        'caption': 'Caption 5'
      },
      {
        'src': 'https://images.unsplash.com/photo-1495819903255-00fdfa38a8de',
        'caption': 'Caption 1'
      },
      {
        'src': 'https://images.unsplash.com/photo-1495819903255-00fdfa38a8de',
        'caption': 'Caption 2'
      },
      {
        'src': 'https://images.unsplash.com/photo-1495819903255-00fdfa38a8de',
        'caption': 'Caption 3'
      },
      {
        'src': 'https://images.unsplash.com/photo-1495819903255-00fdfa38a8de',
        'caption': 'Caption 4'
      },
      {
        'src': 'https://images.unsplash.com/photo-1495819903255-00fdfa38a8de',
        'caption': 'Caption 5'
      },
      // Rest of the networkImages
    ];

    final description =
        'Lorem lipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.';
    return layoutBuilder(
      context,
      [
        ProfilePicture(
          imageUrl: 'assets/images/profile.jpg',
          size: 120.0,
        ),
        SizedBox(height: 20.0),
        Expanded(
          // Add Expanded widget here
          child: Details(
            name: 'John Doe',
            description: description,
            photos: networkImages,
          ),
        ),
      ],
    );
  }
}
