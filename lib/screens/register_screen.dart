import 'package:flutter/material.dart';
import 'package:simple_todo_app/reusable/login_or_register_button.dart';
import 'package:simple_todo_app/reusable/text_field.dart';
import 'package:simple_todo_app/screens/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.purple,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'Register to TodoApp',
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
                'Create new account',
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
                  title: 'Name',
                  icon: const Icon(Icons.person_2_outlined),
                  textEditingController: nameController),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              ReusableTextField(
                  textInputAction: TextInputAction.next,
                  title: 'Email',
                  icon: const Icon(Icons.email_outlined),
                  textEditingController: emailController),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              ReusableTextField(
                  textInputAction: TextInputAction.next,
                  title: 'Password',
                  icon: const Icon(Icons.password_outlined),
                  textEditingController: passwordController),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              ReusableTextField(
                  textInputAction: TextInputAction.next,
                  title: 'Confirm password',
                  icon: const Icon(Icons.password_outlined),
                  textEditingController: confirmPasswordController),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              LoginOrRegisterTextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const LoginScreen()));
                },
                title: 'Already registered? Click here!',
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.purple,
                  ),
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person_add_alt,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Register',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
