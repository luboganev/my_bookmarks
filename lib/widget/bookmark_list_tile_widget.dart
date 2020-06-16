import 'package:flutter/material.dart';
import 'package:my_bookmarks/util/navigation_util.dart';

import '../model/bookmark.dart';

class BookmarkListTileWidget extends StatelessWidget {
  final Bookmark bookmark;

  BookmarkListTileWidget(this.bookmark);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(bookmark.title, style: Theme.of(context).textTheme.headline6),
      subtitle: Text(
        bookmark.link,
        style: Theme.of(context).textTheme.subtitle1,
      ),
      onTap: () => navigateToViewBookmarksPage(bookmark, context),
    );
  }
}
