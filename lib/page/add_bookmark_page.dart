import 'package:flutter/material.dart';

import '../model/bookmark.dart';
import '../model/bookmark.dart';

class AddBookmarkPage extends StatefulWidget {
  @override
  _AddBookmarkPageState createState() => _AddBookmarkPageState();
}

class _AddBookmarkPageState extends State<AddBookmarkPage> {
  final _titleTextController = TextEditingController();

  final _linkTextController = TextEditingController();

  final _linkFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add a new Bookmark"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              maxLines: 1,
              autofocus: true,
              controller: _titleTextController,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.text,
              onSubmitted: (value) {
                FocusScope.of(context).requestFocus(_linkFocusNode);
              },
              decoration: InputDecoration(
                  icon: Icon(Icons.title),
                  labelText: "Title",
                  hintText: "Title of the bookmark",
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 16.0,
            ),
            TextField(
              maxLines: 1,
              enableSuggestions: true,
              controller: _linkTextController,
              focusNode: _linkFocusNode,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.url,
              decoration: InputDecoration(
                  icon: Icon(Icons.link),
                  labelText: "Link",
                  hintText: "Webpage link",
                  border: OutlineInputBorder()),
            ),
          ],
        ),
      ),
      floatingActionButton: Builder(
        builder: (BuildContext context) => FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.green,
          onPressed: () {
            String title = _titleTextController.text;
            String link = _linkTextController.text;

            Scaffold.of(context).hideCurrentSnackBar();
            if (isValidInput(title, link)) {
              Navigator.pop(context, Bookmark(title, link));
            } else {
              showInputError(context, title, link);
            }
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _titleTextController.dispose();
    _linkTextController.dispose();
    _linkFocusNode.dispose();
    super.dispose();
  }

  bool isValidInput(String title, String link) {
    return title.isNotEmpty && link.isNotEmpty;
  }

  void showInputError(BuildContext context, String title, String link) {
    if (title.isEmpty) {
      showSnackBar(context, "You need to add a title.");
    } else if (link.isEmpty) {
      showSnackBar(context, "You need to add a link.");
    }
  }

  void showSnackBar(BuildContext context, String message) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(message),
    ));
  }
}
