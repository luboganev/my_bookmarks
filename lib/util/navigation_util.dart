import 'package:flutter/material.dart';
import 'package:my_bookmarks/page/add_bookmark_page.dart';
import 'package:my_bookmarks/page/view_bookmark_page.dart';

import '../model/bookmark.dart';

void navigateToViewBookmarksPage(Bookmark bookmark,BuildContext context) {
  Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => ViewBookmarkPage(bookmark)));
}

Future navigateToAddBookmarksPage(BuildContext context) {
  return Navigator.of(context)
      .push(MaterialPageRoute(builder: (context) => AddBookmarkPage()));
}
