import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_ui/home.dart';
import 'package:login_ui/login.dart';

class SignUpActivity extends StatefulWidget {
  const SignUpActivity({Key? key}) : super(key: key);

  @override
  State<SignUpActivity> createState() => _SignUpActivityState();
}

class _SignUpActivityState extends State<SignUpActivity> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
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
                'Create new account',
                style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                'Please fill in the form to continue',
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
                      hintStyle: const TextStyle(color: Color(0xff6a6a6a)),
                      hintText: 'Full name',
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
                  maxLines: 1,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      filled: true,
                      hintStyle: const TextStyle(color: Color(0xff6a6a6a)),
                      hintText: 'Email Address',
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
                  maxLines: 1,
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      filled: true,
                      hintStyle: const TextStyle(color: Color(0xff6a6a6a)),
                      hintText: 'Phone Number',
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
                  obscureText: true,
                  decoration: InputDecoration(
                      filled: true,
                      hintStyle: const TextStyle(color: Color(0xff6a6a6a)),
                      hintText: 'Password',
                      fillColor: const Color(0xFF3C4048),
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(16.0))),
                ),
              ),

              const SizedBox(height: 100.0,),
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
                        'Sign Up',
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Have an Account?",
                      style: TextStyle(fontSize: 16.0, color: Colors.white,fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    GestureDetector(
                        onTap: () {
                          Get.to(const LoginActivity(),transition: Transition.fade);
                        },
                        child: const Text(
                          "Sign In",
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
