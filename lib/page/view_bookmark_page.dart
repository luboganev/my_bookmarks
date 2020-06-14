import 'package:flutter/material.dart';
import 'package:my_bookmarks/widget/view_webpage_widget.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../model/bookmark.dart';

class ViewBookmarkPage extends StatelessWidget {
  final Bookmark bookmark;

  const ViewBookmarkPage(this.bookmark);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(bookmark.title),
      ),
      body: ViewWebPageWidget(bookmark.link),
    );
  }
}
