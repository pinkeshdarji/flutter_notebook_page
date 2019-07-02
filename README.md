# Flutter Notebook Page

A Flutter package allows you to easily integrate Notebook Page like Widget.

## Preview
<img src="./preview/preview.gif" alt="Screenshot"/>

## Installing

1.  Add dependency to `pubspec.yaml`

    *Get the latest version in the 'Installing' tab on pub.dartlang.org*

```dart
dependencies:
    flutter_notebook_page: 0.0.1
```

2.  Import the package
```dart
import 'package:flutter_notebook_page/flutter_notebook_page.dart';
```

3.  Adding NotebookPageWidget

```dart
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: NotebookPage(),
      ),
    );
  }
}
```

*With optional parameters*

```dart
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: NotebookPage(
          item1: '8 characters',
          item2: '1 Special character',
          item3: '1 Upper case',
          height: 150,
          width: 300,
          textStyle: TextStyle(color: Colors.deepPurple, fontSize: 29),
        ),
      ),
    );
  }
}
```

## Getting Started

This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
