import 'package:codignus_demo_project/core/constants.dart';
import 'package:codignus_demo_project/presentation/screens/home_screen/home_screen.dart';
import 'package:codignus_demo_project/presentation/widgets/logo_container.dart';
import 'package:codignus_demo_project/presentation/widgets/social_auth_widget.dart';
import 'package:codignus_demo_project/presentation/widgets/text_form_field_widget.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var _formKey = GlobalKey<FormState>();
  bool _checkBoxValue = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void _submit() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = screenSize(context).width;
    double screenHeight = screenSize(context).height;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              header(screenHeight, screenWidth),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              const Text(
                'Sign Up For Free',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              authenticationForm(screenHeight),
              signInButton(screenHeight),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              const Text(
                'or Continue with',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SocialAuthWidget(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      imageUrl: facebookLogo,
                      title: 'Facebook',
                    ),
                    kWidth,
                    SocialAuthWidget(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                      imageUrl: googleLogo,
                      title: 'Google',
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Don\'t have an account?',
                      style: Theme.of(context).textTheme.bodyText1),
                  const Text(
                    'SignUp',
                    style: TextStyle(color: Colors.pink),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Form authenticationForm(double screenHeight) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormFieledWidget(
            screenHeight: screenHeight,
            labelText: 'Email',
            textEditingController: emailController,
            keybordType: TextInputType.emailAddress,
          ),
          TextFormFieledWidget(
            screenHeight: screenHeight,
            labelText: 'Password',
            textEditingController: passwordController,
            keybordType: TextInputType.visiblePassword,
          ),
          Row(
            children: [
              Theme(
                data: ThemeData(unselectedWidgetColor: Colors.red),
                child: Checkbox(
                  value: _checkBoxValue,
                  onChanged: (value) {
                    setState(() {
                      _checkBoxValue = value!;
                    });
                  },
                  checkColor: Colors.white,
                  activeColor: Colors.pink,
                  focusColor: Colors.white,
                ),
              ),
              const Text(
                'Remember Me!',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ],
      ),
    );
  }

  Container header(double screenHeight, double screenWidth) {
    return Container(
      height: screenHeight * 0.3,
      width: double.infinity,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LogoContainer(
            screenHeight: screenHeight * 0.1,
            screenWidth: screenWidth * 0.2,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Foodie',
              style: TextStyle(
                  color: Colors.pink,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }

  GestureDetector signInButton(double screenHeight) {
    return GestureDetector(
      onTap: () {
        _submit();
      },
      child: Container(
        height: screenHeight * 0.07,
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.pink,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.white.withOpacity(0.65),
              Colors.pink,
            ],
          ),
        ),
        child: const Text(
          'Sign in',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        alignment: Alignment.center,
      ),
    );
  }
}
