import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/current_page.dart';
import '../widgets/user_form.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ShadeBox(
          myFunction: () {
            Provider.of<CurrentPage>(context, listen: false)
                .pageController
                .animateToPage(1,
                    duration: Duration(microseconds: 3), curve: Curves.ease);
          },
          myWidget: Text("Welcome"),
        ),
        ShadeBox(
            myFunction: () {
              Provider.of<CurrentPage>(context, listen: false)
                  .pageController
                  .animateToPage(2,
                      duration: Duration(microseconds: 3), curve: Curves.ease);
            },
            myWidget: Text("About")),
        ShadeBox(myWidget: UserForm())
      ],
    );
  }
}

class ShadeBox extends StatelessWidget {
  Widget myWidget;
  VoidCallback? myFunction;

  ShadeBox({
    this.myFunction,
    required this.myWidget,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: myFunction,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
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
