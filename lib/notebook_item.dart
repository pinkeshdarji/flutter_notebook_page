import 'package:flutter/material.dart';

class NotebookItem extends StatelessWidget {
  final double height;
  final double fullHeight;
  final Orientation orientation;
  final String item;
  final TextStyle textStyle;

  NotebookItem(
      {Key key,
      this.height,
      this.fullHeight,
      this.orientation,
      this.item,
      this.textStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          maxHeight: height ??
              (orientation == Orientation.portrait
                      ? fullHeight / 4
                      : fullHeight / 2) *
                  0.20),
      child: Text(
        item,
        style: textStyle,
      ),
    );
  }
}
