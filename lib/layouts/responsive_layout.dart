import 'package:flutter/material.dart';
import '../components/content_widget.dart';

Widget buildResponsiveLayout(
  BoxConstraints constraints,
  Orientation orientation,
) {
  return orientation == Orientation.portrait
      ? Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: ContentWidgets(
              layoutBuilder: (context, children) {
                return Column(
                  children: children,
                );
              },
            ),
          ),
        )
      : Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: ContentWidgets(
              layoutBuilder: (context, children) {
                return Row(
                  children: children,
                );
              },
            ),
          ),
        );
}
