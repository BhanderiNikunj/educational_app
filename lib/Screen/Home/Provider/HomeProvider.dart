import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeProvider extends ChangeNotifier {
  WebViewController? webViewController;

  List URL = [
    Uri.parse("https://www.wikipedia.org/"),
    Uri.parse("https://www.w3schools.com/"),
    Uri.parse("https://www.javatpoint.com/"),
    Uri.parse("https://www.tutorialspoint.com/index.htm"),
  ];

  List Name = [
    "Wikipedia",
    "W3School",
    "Javatpoint",
    "tutorialspoint",
  ];


  List Images = [
    "Assets/Images/wikipedia.png",
    "Assets/Images/W3School.png",
    "Assets/Images/javatpoint.png",
    "Assets/Images/tutorialspoint.png",
  ];

  void LoadUrl(int index) {
    webViewController = WebViewController();
    webViewController!.loadRequest(
      Uri.parse(
        "${URL[index]}",
      ),
    );
  }
}
