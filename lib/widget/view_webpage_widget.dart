import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ViewWebPageWidget extends StatefulWidget {
  final String url;

  const ViewWebPageWidget(this.url);

  @override
  _ViewWebPageWidgetState createState() => _ViewWebPageWidgetState();
}

class _ViewWebPageWidgetState extends State<ViewWebPageWidget> {
  var _isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        WebView(
          initialUrl: widget.url,
          onPageFinished: (url) {
            setState(() {
              _isLoading = false;
            });
          },
        ),
        _isLoading
            ? Container(
                color: Colors.white70,
                constraints: BoxConstraints.expand(),
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              )
            : Container()
      ],
    );
  }
}
