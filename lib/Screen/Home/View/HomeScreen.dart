import 'package:educational_app/Screen/Home/Provider/HomeProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? homeProvidertrue, homeProviderfalse;
  @override
  Widget build(BuildContext context) {
    homeProviderfalse = Provider.of<HomeProvider>(context, listen: false);
    homeProvidertrue = Provider.of<HomeProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: ListView.builder(
          itemCount: homeProviderfalse!.URL.length,
          itemBuilder: (context, index) {
            return Button(index);
          },
        ),
      ),
    );
  }

  Widget Button(int index) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          homeProviderfalse!.LoadUrl(index);
          Navigator.pushNamed(context, 'home-link');
        },
        child: Container(
          width: double.infinity,
          height: 250,
          decoration: BoxDecoration(
            color: Colors.white30,
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "${homeProviderfalse!.Images[index]}",
                height: 150,
                width: 150,
              ),
              SizedBox(height: 20),
              Text(
                "${homeProviderfalse!.Name[index]}",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
