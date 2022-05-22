import 'package:flutter/material.dart';
import 'package:welcome_page/screens/about_screen.dart';
import 'package:welcome_page/screens/welcome_screen.dart';
import 'package:welcome_page/widgets/user_form.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

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
          children: [
            Column(
              children: [
                WelcomeScreen(),
                AboutScreen(),
                ShadeBox(
                  myWidget: Text("Welcome"),
                ),
                ShadeBox(myWidget: Text("About")),
                ShadeBox(myWidget: UserForm())
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ShadeBox extends StatelessWidget {
  Widget myWidget;
  ShadeBox({
    required this.myWidget,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          shape: BoxShape.rectangle,
          color: Colors.black.withOpacity(0.5),
          boxShadow: const <BoxShadow>[
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5.0,
              offset: Offset(5.0, 5.0),
            ),
          ],
        ),
        child: Center(child: myWidget),
      ),
    );
  }
}
