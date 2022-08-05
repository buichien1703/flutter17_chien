import 'package:app_music/widgets/app_large_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(

            padding: const EdgeInsets.only(top: 70, left: 20),
            child: Row(
              children: [
                Icon(
                  Icons.menu,
                  size: 30,
                  color: Colors.black54,
                ),
                Expanded(child: Container()),
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 40,),
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: AppLargeText(text: "Discovery"),),
          //text
          SizedBox(height: 30,),
          //tab bar
          Container(
            child: TabBar(
              tabs: [
                Tab(text: "Places",),
                Tab(text: "Insparation",),
                Tab(text: "Emotions",)
              ],
            ),
          ),
          Container(child: TabBarView(children: [
            Text("data"),
            Text("on"),
            Text("ozz")
          ],

          ),)
        ],
      ),
    );
  }
}
