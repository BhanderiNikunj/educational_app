import 'package:educational_app/Screen/Home/Provider/HomeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeLinkScreen extends StatefulWidget {
  const HomeLinkScreen({Key? key}) : super(key: key);

  @override
  State<HomeLinkScreen> createState() => _HomeLinkScreenState();
}

class _HomeLinkScreenState extends State<HomeLinkScreen> {
  HomeProvider? homeProvidertrue, homeProviderfalse;

  @override
  Widget build(BuildContext context) {
    homeProviderfalse = Provider.of<HomeProvider>(context, listen: false);
    homeProvidertrue = Provider.of<HomeProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        body: WebViewWidget(
          controller: homeProviderfalse!.webViewController!,
        ),
      ),
    );
  }
}
