library flutter_notebook_page;

import 'package:flutter/material.dart';

import 'blank_notebook_page.dart';
import 'notebook_item.dart';

class NotebookPage extends StatelessWidget {
  final String item1;
  final String item2;
  final String item3;
  final String item4;
  final String item5;
  final double height;
  final double width;
  final TextStyle textStyle;

  const NotebookPage(
      {Key key,
      this.item1,
      this.item2,
      this.item3,
      this.item4,
      this.item5,
      this.height,
      this.width,
      this.textStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var fullHeight = MediaQuery.of(context).size.height;
    var fullWidth = MediaQuery.of(context).size.width;
    Orientation orientation = MediaQuery.of(context).orientation;

    var defaultTextStyle =
        textStyle ?? TextStyle(color: Colors.black, fontSize: 29);

    var notebookHeight = height ??
        (orientation == Orientation.portrait ? fullHeight / 4 : fullHeight / 2);

    return CustomPaint(
      painter: BlankNotebookPage(),
      child: Container(
        width: width ?? fullWidth * 0.9,
        height: notebookHeight,
        child: Container(
          margin: EdgeInsets.only(left: width ?? fullWidth * 0.11),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              NotebookItem(
                height: height,
                fullHeight: fullHeight,
                orientation: orientation,
                textStyle: defaultTextStyle,
                item: item1 ?? '',
              ),
              NotebookItem(
                height: height,
                fullHeight: fullHeight,
                orientation: orientation,
                textStyle: defaultTextStyle,
                item: item2 ?? '',
              ),
              NotebookItem(
                height: height,
                fullHeight: fullHeight,
                orientation: orientation,
                textStyle: defaultTextStyle,
                item: item3 ?? '',
              ),
              NotebookItem(
                height: height,
                fullHeight: fullHeight,
                orientation: orientation,
                textStyle: defaultTextStyle,
                item: item4 ?? '',
              ),
              NotebookItem(
                height: height,
                fullHeight: fullHeight,
                orientation: orientation,
                textStyle: defaultTextStyle,
                item: item5 ?? '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
