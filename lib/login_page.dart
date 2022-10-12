import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  // final VoidCallback showRegisterPage;
  const LoginPage({Key? key,}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 25),
              //hello again!
              Text('Hello Again!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 24,
                  )),
              SizedBox(height: 10),
              Text('Welcome back, you\'ve been missed!',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 20,
                  )),
              SizedBox(height: 25),

              //email text field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Email'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),

              //password textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Password  '),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),

              //sign in button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Text(
                      'Sign In ',
                      style: TextStyle(color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),

              //not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not member? ',style: TextStyle(
                  fontWeight: FontWeight.bold),),
                  
                  GestureDetector(
                    // onTap:Widget.showRegisterPage ,
                    child: Text('Register now ',
                    style: TextStyle(color: Colors.blue,
                    fontWeight: FontWeight.bold),),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
