import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_ui/home.dart';
import 'package:login_ui/signup.dart';

class LoginActivity extends StatefulWidget {
  const LoginActivity({Key? key}) : super(key: key);

  @override
  State<LoginActivity> createState() => _LoginActivityState();
}

class _LoginActivityState extends State<LoginActivity> {
  bool hidden = true;

  void _togglePasswordView(){
    setState(() {
      hidden == false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 80.0,
              ),
              const Text(
                'Welcome Back!',
                style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'Please sign in to your account',
                style: TextStyle(color: Color(0xFF413F42), fontSize: 14.0),
              ),
              const SizedBox(
                height: 60.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: TextField(
                  maxLines: 1,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      filled: true,
                      hintText: 'E-mail',
                      hintStyle: const TextStyle(color: Color(0xff6a6a6a)),
                      fillColor: const Color(0xFF3C4048),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(16.0))),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  obscureText: hidden,
                  decoration: InputDecoration(
                      filled: true,
                      hintText: 'Password',
                      suffix: InkWell(onTap:_togglePasswordView,child:Icon(hidden ? Icons.visibility : Icons.visibility_off)),
                      hintStyle: const TextStyle(color: Color(0xff6a6a6a)),
                      fillColor: const Color(0xFF3C4048),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(16.0))),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              InkWell(
                onTap: () {},
                child: const Align(
                  alignment: Alignment.centerRight,
                  child:Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: Color(0xFF413F42),
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 180.0,),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: InkWell(
                  onTap: () {
                    Get.offAll(()=>const HomeActivity(),transition: Transition.fade);
                  },
                  child: Container(
                    height: 56.0,
                    decoration: BoxDecoration(
                        color:const Color(0xFF1363DF),
                        borderRadius: BorderRadius.circular(12.0)),
                    child: const Center(
                      child: Text(
                        'Sign In',
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    height: 56.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/google.png',
                            height: 16.0,
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          const Text(
                            'Sign In with Google',
                            style: TextStyle(color: Colors.black, fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have Account?",
                      style: TextStyle(fontSize: 16.0, color: Colors.white,fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    GestureDetector(
                        onTap: () {
                          Get.to(const SignUpActivity(),transition: Transition.fade);
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(fontSize: 16.0, color: Color(0xFF1363DF),fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
