import 'package:babe_assingment/register.dart';
import 'package:flutter/material.dart';
import 'package:text_divider/text_divider.dart';


class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _MyAppState();
}

class _MyAppState extends State<Login> {
  var emailctr = TextEditingController();
  var passctr = TextEditingController();
  var signemailctr = TextEditingController();
  var signpassctr = TextEditingController();
  var signpassctr2 = TextEditingController();
  var formkey = GlobalKey<FormState>();
  var formkey2 = GlobalKey<FormState>();
  var scaffoldkey = GlobalKey<ScaffoldState>();
  bool isscure = true;
  bool isscure2 = true;
  int mycolor = Colors.grey[200]!.value;

  var username = TextEditingController();


  Widget signsheet(context) {
    return Padding(
      padding:const  EdgeInsets.only(left: 10, bottom: 6, right: 10, top: 19),
      child: SingleChildScrollView(
        child: Form(
          key: formkey2,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Ur name can not be empty';
                    }
                    return null;
                  },
                  controller: username,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'User name',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Email address can not be empty';
                    }
                    return null;
                  },
                  controller: signemailctr,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'Email',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'password can not be empty';
                    }
                    return null;
                  },
                  controller: signpassctr,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'Password',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'password can not be empty';
                    }
                    if (signpassctr.text != signpassctr2.text) {
                      return 'You must write the same password twice';
                    }
                    if (signpassctr.text == signpassctr2.text) {
                      return null;
                    }
                  },
                  controller: signpassctr2,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    labelText: 'Confirm  Password',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                child: ElevatedButton(
                  onPressed: () {
                    if (formkey2.currentState!.validate()) {
                      Navigator.of(context).pop();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      primary: Colors.teal[300],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50))),
                  child: const Text('sign up', style: TextStyle(fontSize: 17)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: double.infinity,
          color: Colors.teal[800],
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.only(left: 30, right: 30),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(21),
                child: Form(
                  key: formkey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 27,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 55,
                        ),
                        Text(
                          'Welcome to MiCourse',
                          style: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Email address can not be empty';
                            }
                            return null;
                          },
                          controller: emailctr,
                          keyboardType: TextInputType.emailAddress,
                          decoration:const InputDecoration(
                            labelText: 'Email',
                            suffixIcon: Icon(Icons.person),
                          ),
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'password address can not be empty';
                            }
                            return null;
                          },
                          controller: passctr,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: isscure,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isscure = !isscure;
                                  });
                                },
                                icon: isscure
                                    ?const  Icon(Icons.visibility_sharp)
                                    : const Icon(Icons.visibility_off)),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (formkey.currentState!.validate()) {
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(horizontal: 40),
                              primary: Colors.teal[700],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50))),
                          child:const
                          Text('sign in', style: TextStyle(fontSize: 17)),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextDivider.horizontal(
                            text: const  Text('or'),
                            color: Colors.black,
                            size: 50,
                            thickness: .7),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('New account ?',
                                style: TextStyle(
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold)),
                            TextButton(
                                onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder:(context) => RegisterScreen(),));
                                },
                                child: const Text(
                                  'Sign up',
                                  style: TextStyle(
                                      color: Colors.black38,
                                      decoration: TextDecoration.underline),
                                ))
                          ],
                        )
                      ]),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
