import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:kitchen_stories/constants.dart';
import 'package:kitchen_stories/widgets/sign_up_buttons.dart';




class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: const Text(
          'Sign up',
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 25.0),
                child: Image(
                  height: 100,
                  width: 150,
                  image: NetworkImage(
                      'https://img.freepik.com/free-vector/isolated-rose-flower-line-art-with-leaf-clipart_41066-2958.jpg?size=626&ext=jpg&uid=R88220302&ga=GA1.2.198902070.1671404130'),
                ),
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
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 45),
                  child: const SignUpButtons()),
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
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: orangeColor,
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
