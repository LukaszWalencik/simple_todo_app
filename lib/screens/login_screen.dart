import 'package:flutter/material.dart';
import 'package:simple_todo_app/reusable/login_or_register_button.dart';
import 'package:simple_todo_app/reusable/login_register_accept_button.dart';
import 'package:simple_todo_app/reusable/text_field.dart';
import 'package:simple_todo_app/screens/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController loginController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: const Text(
          'Simple TodoApp',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              const Text(
                'Login to your account',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              ReusableTextField(
                  textInputAction: TextInputAction.next,
                  title: 'Login',
                  icon: const Icon(Icons.person),
                  textEditingController: loginController),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              ReusableTextField(
                  textInputAction: TextInputAction.done,
                  title: 'Password',
                  icon: const Icon(Icons.lock),
                  textEditingController: passwordController),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              LoginOrRegisterTextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const RegisterScreen()));
                  },
                  title: 'New user? Click here!'),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              LoginRegisterAcceptButton(
                  onTap: () {}, icons: Icons.login_outlined, title: 'Login')
            ],
          ),
        ),
      ),
    );
  }
}
