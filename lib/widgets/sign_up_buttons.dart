import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:kitchen_stories/screens/email_sign.dart';

class SignUpButtons extends StatelessWidget {
  const SignUpButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MaterialButton(
          elevation: 1,
          height: 50,
          color: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 8.0, left: 8),
                child:
                    Image(height: 23, image: AssetImage('images/Google.svg')),
              ),
              Text(
                'Sign up with Google',
                style: TextStyle(letterSpacing: 1),
              )
            ],
          ),
          onPressed: () {},
        ),
        const SizedBox(
          height: 15,
        ),
        MaterialButton(
          elevation: 1,
          height: 50,
          color: const Color.fromARGB(255, 24, 110, 180),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 8.0, left: 8),
                child: Icon(
                  FeatherIcons.facebook,
                  color: Colors.white,
                ),
              ),
              Text(
                'Sign up with Facebook',
                style: TextStyle(color: Colors.white, letterSpacing: 1),
              )
            ],
          ),
          onPressed: () {},
        ),
        const SizedBox(height: 15),
        MaterialButton(
          elevation: 1,
          height: 50,
          color: const Color.fromARGB(255, 24, 126, 116),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 8.0, left: 8),
                child: Icon(FeatherIcons.mail, color: Colors.white),
              ),
              Text(
                'Sign up with email',
                style: TextStyle(color: Colors.white, letterSpacing: 1),
              )
            ],
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) {
              return const EmailPage();
            }));
          },
        ),
      ],
    );
  }
}
