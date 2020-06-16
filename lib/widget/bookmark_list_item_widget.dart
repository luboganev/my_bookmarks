import 'package:flutter/material.dart';
import 'package:my_bookmarks/util/navigation_util.dart';

import '../model/bookmark.dart';

class BookmarkListItemWidget extends StatelessWidget {
  final Bookmark bookmark;

  BookmarkListItemWidget(this.bookmark);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => navigateToViewBookmarksPage(bookmark, context),
      child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    bookmark.title,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    bookmark.link,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ],
              ),
              Hero(
                  tag: bookmark.link,
                  child: Icon(Icons.star, size: 40.0)),
            ],
          )),
    );
  }
}
