import 'package:audio/models/recipe_card.dart';
import 'package:flutter/material.dart';
import 'package:audio/app_color/app_colors.dart' as AppColor;

class MyHomepage extends StatefulWidget {
  const MyHomepage({super.key});

  @override
  State<MyHomepage> createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.audioBlueBackground,
        title: const Center(
          child: Text(
            'LetS Eat',
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: SafeArea(child: ListView.builder(itemBuilder: (ctx, i) {
        return RecipeCard(
          i: i,
        );
      })),
    );
  }
}



// color: AppColor.background,
      // child: SafeArea(
      //   child: Scaffold(
      //     body: Column(
      //       children: [
      //         SizedBox(
      //           height: 20,
      //         ),
      //         Container(
      //           margin: const EdgeInsets.only(left: 20, right: 20),
      //           child: Row(
      //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //             children: [
      //               Icon(Icons.now_widgets_rounded),
      //               Row(
      //                 children: [
      //                   Icon(Icons.search_off_sharp),
      //                   SizedBox(
      //                     width: 10,
      //                   ),
      //                   Icon(Icons.notification_important_sharp)
      //                 ],
      //               ),
      //             ],
      //           ),
      //         ),
      //         SizedBox(
      //           height: 10,
      //         ),
      //         Row(
      //           children: [
      //             Container(
      //               margin: EdgeInsets.only(left: 20),
      //               child: Text(
      //                 "Popular ",
      //                 style: TextStyle(fontSize: 30),
      //               ),
      //             ),
      //             SizedBox(
      //               height: 10,
      //             ),
      //           ],
      //         ),
      //         Container(
      //           height: 180,
      //           width: MediaQuery.of(context).size.width,
      //           margin: EdgeInsets.only(right: 10),
      //           child: PageView.builder(
      //               controller: PageController(viewportFraction: 0.8),
      //               itemCount: 5,
      //               itemBuilder: (_, i) {
      //                 return Container(
      //                   height: 180,
      //                   decoration: BoxDecoration(
      //                     borderRadius: BorderRadius.circular(15),
      //                     image: DecorationImage(
      //                       image: AssetImage("assets/images/banner.jpeg"),
      //                     ),
      //                   ),
      //                 );
      //               }),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
