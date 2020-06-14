import 'package:my_bookmarks/page/add_bookmark_page.dart';
import 'package:my_bookmarks/page/view_bookmark_page.dart';
import 'package:flutter/material.dart';

import '../model/bookmark.dart';

void navigateToViewBookmarksPage(Bookmark bookmark,BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => ViewBookmarkPage(bookmark)));
}

void navigateToAddBookmarksPage(BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => AddBookmarkPage()));
}
