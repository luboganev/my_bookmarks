import 'package:flutter/material.dart';

import 'page/bookmarks_page.dart';

void main() {
  runApp(MyBookmarksApp());
}

class MyBookmarksApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: BookmarksPage());
  }
}
