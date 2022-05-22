import 'package:flutter/material.dart';

class UserForm extends StatefulWidget {
  UserForm({Key? key}) : super(key: key);

  @override
  State<UserForm> createState() => _UseFormState();
}

class _UseFormState extends State<UserForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text("Contact"),
          TextFormField(
            decoration: InputDecoration(
                label: Text("Email"),
                fillColor: Colors.white.withOpacity(0.5),
                filled: true),
          ),
          TextFormField(
            decoration: InputDecoration(
                label: Text("Message"),
                fillColor: Colors.white.withOpacity(0.5),
                filled: true),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Send message"),
            style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 37, 105, 39)),
          )
        ],
      ),
    );
  }
}
