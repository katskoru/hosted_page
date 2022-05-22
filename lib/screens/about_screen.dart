import 'package:flutter/material.dart';
import 'package:welcome_page/screens/first_screen.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShadeBox(
      myWidget: Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris pellentesque pulvinar massa in pulvinar. Vestibulum pretium consectetur porta. Ut sit amet tellus et nunc iaculis dictum ut non quam. Pellentesque ut dui ultrices, eleifend neque ut, malesuada lorem. Integer in tortor quis mauris euismod venenatis. Etiam consectetur viverra orci, vel dictum mi vehicula laoreet. Mauris iaculis et velit eu ultricies. Praesent eget mollis ipsum, in semper libero. Vestibulum sed nisi in ex bibendum feugiat a a leo. Vestibulum vulputate metus sit amet massa pulvinar dignissim."),
    );
  }
}
