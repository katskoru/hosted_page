import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:welcome_page/providers/current_page.dart';
import 'package:welcome_page/screens/about_screen.dart';
import 'package:welcome_page/screens/first_screen.dart';
import 'package:welcome_page/screens/welcome_screen.dart';
import 'package:welcome_page/widgets/user_form.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://images.pexels.com/photos/574190/pexels-photo-574190.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260"),
                  fit: BoxFit.cover)),
          child: PageView(
            controller: Provider.of<CurrentPage>(context).pageController,
            pageSnapping: true,
            children: [
              FirstScreen(),
              WelcomeScreen(),
              AboutScreen(),
            ],
          )),
    );
  }
}
