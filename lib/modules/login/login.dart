import 'package:beezar/components/custom_btn.dart';
import 'package:beezar/components/custom_textfeild1.dart';
import 'package:beezar/constants.dart';
import 'package:flutter/material.dart';


import 'login_controller.dart';

class LogIn extends StatefulWidget {


  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool passwordVisible = false;
  bool Issecure = true;
  logInController controller = logInController();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Center(
          child: Form(
            key: formKey,
            child: ListView(
              children: [

                Center(
                  child: Text(
                    "مرحبًا بعودتك يرجى تسجيل الدخول الآن",
                    style: TextStyle(
                        color: itemColor,
                        fontSize: 15,
                        fontFamily: "ca1",
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery
                          .of(context)
                          .size
                          .width * 0.07,
                      left: MediaQuery
                          .of(context)
                          .size
                          .width * 0.01,
                      right: MediaQuery
                          .of(context)
                          .size
                          .width * 0.01),
                  child: FormFields(
                      "البريد الاليكتروني",
                      Icon(Icons.email),
                      null,
                      false,
                      emailController,
                          (value) {}
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery
                          .of(context)
                          .size
                          .width * 0.03,
                      left: MediaQuery
                          .of(context)
                          .size
                          .width * 0.01,
                      right: MediaQuery
                          .of(context)
                          .size
                          .width * 0.01),
                  child: FormFields(
                      "كلمة المرور",
                      Icon(Icons.lock),
                      IconButton(
                        icon: Icon(
                          passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            Issecure = !Issecure;
                            passwordVisible = !passwordVisible;
                          });
                        },
                      ),
                      Issecure,
                      passwordController,
                          (value) {}

                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: MediaQuery
                        .of(context)
                        .size
                        .width * 0.01,
                    right: MediaQuery
                        .of(context)
                        .size
                        .width * 0.01,
                    top: MediaQuery
                        .of(context)
                        .size
                        .width * 0.03,
                  ),
                  child: Column(
                    children: [
                      CustomBtn(
                        onTapBtn: () {
                          if (formKey.currentState!.validate()) {


                          }
                        },
                        btnText: 'تأكيد',
                        btnBgColor: mainColor,
                        btnTxtColor: Colors.white,
                      ),
                      SizedBox(height: 5,),
                      Text(
                        'او سجل الدخول بواسطة',
                        style: TextStyle(
                          fontFamily: 'ca1',
                          color: Colors.black,
                        ),
                      ),
                      faceBtn(onTapBtn: () {}),
                    ],
                  ),
                ),

              ],
            ),
          ),

        ),
      ),
    );
  }
}