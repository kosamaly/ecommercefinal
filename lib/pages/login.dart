import 'package:ecommerce/pages/register.dart';
import 'package:flutter/material.dart';

import '../shared/custom_textfield.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 247, 247),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 64,),
              Mytextfield(
                  textInputTypeee:TextInputType.emailAddress ,
                  isPassword: false ,
                  hinttexttt:  "Enter your Email" ,
              ),

              SizedBox(height: 12,),

              Mytextfield(

                textInputTypeee:TextInputType.text ,
                isPassword: true ,
                hinttexttt:  "Enter your Password" ,
              ),
              SizedBox(height: 33,),
              ElevatedButton(
                onPressed: (){},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.cyanAccent),
                  padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                ),
                child: Text("Sign in", style: TextStyle(fontSize: 19),),
              ),
              SizedBox(height: 1,),
              Row( mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Do not have an account?",style: TextStyle(color: Colors.black,fontSize: 18)),
                  TextButton(
                    onPressed: (){
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const Register()),
                      );
                    },

                  child:
                  Text('Sign up', style: TextStyle(color: Colors.black)),)

                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
