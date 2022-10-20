import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_ui/login.dart';

class WelcomeActivity extends StatelessWidget {
  const WelcomeActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/ic_welcome_bg.jpg'),
              fit: BoxFit.cover
            )
          ),
          child: Column(
            children: [
              const Spacer(),
              const Text('abda',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23.0,color: Colors.white),
              ),
              const SizedBox(height: 12.0,),
              const Text('watch your favorite movies or series on\n only one platform. You can watch it\n anytime and anywhere',textAlign: TextAlign.center,style: TextStyle(fontSize: 14.0,color: Colors.white),
              ),
              const SizedBox(height: 20.0,),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                child: InkWell(
                  onTap: () {
                    Get.offAll(()=>const LoginActivity(),transition: Transition.fade);
                  },
                  child: Container(
                    height: 56.0,
                    decoration: BoxDecoration(
                        color:Colors.indigo,
                        borderRadius: BorderRadius.circular(12.0)),
                    child: const Center(
                      child: Text(
                        'Get Started',
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50.0,),
            ],
          ),
        ),
      );
  }
}
