
import 'package:flutter/material.dart';
import 'package:serajjjjjjjj/Pick_Image_Page_State.dart';
import 'package:serajjjjjjjj/create_state.dart';
import 'package:serajjjjjjjj/date_picker_page_state.dart';
import 'package:serajjjjjjjj/pageviwe_page.dart';


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("All Widgets on One Screen")),
      body: SingleChildScrollView( 
        child: Column(
          children: [
        
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/2.jpeg"), 
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Text(
                  'Sliver AppBar Example',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Date Picker Section
            DatePickerPage(),

            SizedBox(height: 20),

            // Image Picker Section
            PickImagePage(),

            SizedBox(height: 20),

            // Slider Section
            SliderPage(),

            SizedBox(height: 20),

            // PageView Section
            PageViewPage(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
