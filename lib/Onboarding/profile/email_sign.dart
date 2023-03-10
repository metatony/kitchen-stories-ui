import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:kitchen_stories/Constatnts/constants.dart';
import 'package:kitchen_stories/Onboarding/profile/profile_account.dart';

class EmailPage extends StatelessWidget {
  const EmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: IconButton(
          icon: const Icon(
            FeatherIcons.arrowLeft,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Sign up with email',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              FeatherIcons.settings,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'To discover all our tastebud tickling recipes and features, please sign up.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, letterSpacing: 1),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                  child: Column(
                    children: const [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Username',
                        ),
                      ),
                      TextField(
                        obscureText: true,
                        obscuringCharacter: '*',
                        decoration: InputDecoration(
                          labelText: 'Password',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              MaterialButton(
                height: 45,
                minWidth: 250,
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                color: kGreenButtonColor,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return const Profile();
                  }));
                },
                child: const Text(
                  'Join Kitchen Stories',
                  style: TextStyle(
                      fontSize: 16, letterSpacing: 1, color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: RichText(
                  text: const TextSpan(
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(text: 'By signing up I accept the '),
                        TextSpan(
                          text: 'terms of use',
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                        TextSpan(text: ' and the '),
                        TextSpan(
                          text: 'data privacy policy',
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ),
                      ]),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Already have an account?',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'LOG IN HERE',
                style: TextStyle(
                    fontSize: 14,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                    color: kOrangeColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
