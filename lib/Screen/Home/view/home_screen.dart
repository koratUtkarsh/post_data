import 'package:flutter/material.dart';
import 'package:post_data/Screen/Home/Provider/home_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? homeProvidertrue,homeProviderfalse;
  @override
  Widget build(BuildContext context) {
    homeProviderfalse = Provider.of<HomeProvider>(context,listen: false);
    homeProvidertrue = Provider.of<HomeProvider>(context,listen: true);
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Post API"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          ElevatedButton(onPressed: () async {

            String msg = await homeProviderfalse!.postData();
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("${msg}"),),);
          }, child: Text("Post Server"),),
        ],
      ),
    ),);
  }
}