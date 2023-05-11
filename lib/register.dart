// ignore_for_file: must_be_immutable, file_names

import 'package:babe_assingment/shared/sqflight.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var companyNameController = TextEditingController();
  var contactPersonNameController = TextEditingController();
  var contactPersonPhoneController = TextEditingController();
  var emailController = TextEditingController();
  var companyAddressController = TextEditingController();
  var companyLocationController = TextEditingController();
  var companySizeController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  // salma will do that here eeee
  List<String> items = ['micro', 'mini ', 'small', 'large'];

  ////////////////

  List<String> Industries = ['industry1' , 'industry2','industry3' , 'industry4' ];
  List<String> selectedIndustries= [] ;


  bool checkBoxv1 = false;
  bool checkBoxv2 = false;
  bool checkBoxv3 = false;
  bool checkBoxv4 = false;

  String? selectedOption;


  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Register',
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),

                  TextFormField(
                    keyboardType: TextInputType.name,
                    controller: companyNameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Company Name must not be empty';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      prefixIcon: const Icon(Icons.person),
                      label: const Text('Company Name '),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  TextFormField(
                    keyboardType: TextInputType.name,
                    controller: contactPersonNameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Contact Person Name is a mandatory field ';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      prefixIcon: const Icon(Icons.email),
                      label: const Text(' Contact Person Name'),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  const Text(
                    '  Company Industry',
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey, //color of border
                            width: 2, //width of border
                          ),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          CheckboxListTile(

                            title: Text(
                              Industries[0],
                              style: TextStyle(fontSize: 17.0),
                            ),
                            controlAffinity: ListTileControlAffinity.leading,
                            checkColor: Colors.greenAccent,
                            onChanged: (value) {
                              setState(() {
                                checkBoxv1 = !checkBoxv1;
                                if( checkBoxv1)
                                  {
                                    selectedIndustries.add( Industries[0]);
                                  }
                                else
                                  {
                                    selectedIndustries.remove( Industries[0]);
                                  }
                              });
                            },
                            value: checkBoxv1,
                          ),
                          CheckboxListTile(
                            title: Text(
                              Industries[1],
                              style: TextStyle(fontSize: 17.0),
                            ),
                            controlAffinity: ListTileControlAffinity.leading,
                            checkColor: Colors.greenAccent,
                            onChanged: (value) {
                              setState(() {
                                checkBoxv2 = !checkBoxv2;
                                if( checkBoxv2)
                                {
                                  selectedIndustries.add( Industries[1]);
                                }
                                else
                                {
                                  selectedIndustries.remove( Industries[1]);
                                }
                              });
                            },
                            value: checkBoxv2,
                          ),
                          CheckboxListTile(
                            title: Text(Industries[2], style: TextStyle(fontSize: 17.0),
                            ),
                            controlAffinity: ListTileControlAffinity.leading,
                            checkColor: Colors.greenAccent,
                            onChanged: (value) {
                              setState(() {
                                checkBoxv3 = !checkBoxv3;
                                if( checkBoxv3)
                                {
                                  selectedIndustries.add( Industries[2]);
                                }
                                else
                                {
                                  selectedIndustries.remove( Industries[2]);
                                }
                              });
                            },
                            value: checkBoxv3,
                          ),
                          CheckboxListTile(
                            title: Text( Industries[3], style: TextStyle(fontSize: 17.0),
                            ),
                            controlAffinity: ListTileControlAffinity.leading,
                            checkColor: Colors.greenAccent,
                            onChanged: (value) {
                              setState(() {
                                checkBoxv4 = !checkBoxv4;
                                if( checkBoxv4)
                                {
                                  selectedIndustries.add( Industries[3]);
                                }
                                else
                                {
                                  selectedIndustries.remove( Industries[3]);
                                }
                              });
                            },
                            value: checkBoxv4,
                          ),
                        ],
                      )),
                  const SizedBox(
                    height: 30,
                  ),

                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: contactPersonPhoneController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Phone Number must not be empty';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      prefixIcon: const Icon(Icons.phone),
                      label: const Text('Contact Person Phone Number'),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'email must not be empty';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      prefixIcon: const Icon(Icons.email),
                      label: const Text('Email'),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  TextFormField(
                    keyboardType: TextInputType.text,
                    controller: companyAddressController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Company Address is mandatory field';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      prefixIcon: const Icon(Icons.email),
                      label: const Text('Company Address'),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  TextFormField(
                    keyboardType: TextInputType.name,
                    controller: companyLocationController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'email must not be empty';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      prefixIcon: const Icon(Icons.email),
                      label: const Text('Company Location'),
                    ),
                  ), // here we need to update
                  const SizedBox(
                    height: 30,
                  ),

                  TextFormField(
                    controller: companySizeController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'email must not be empty';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      suffixIcon: DropdownButtonFormField(
                        decoration: const InputDecoration(
                            hintText: "   Company Size",
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white))),
                        value: selectedOption,
                        onChanged: (newValue) {
                          setState(() {
                            selectedOption = newValue;
                            companySizeController.text = newValue!;
                            print('company size is here ');
                            print(companySizeController.text);
                            print(newValue);
                          });
                        },
                        items:
                            items.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),

//// not mandatory here we need to update
                  const SizedBox(
                    height: 30,
                  ),

                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    controller: passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Password must not be empty';
                      }
                      if (passwordController.text.length < 8) {
                        return 'Password must  be more than 8 characters';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      prefixIcon: const Icon(Icons.lock),
                      label: const Text('Password'),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    controller: confirmPasswordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Password must not be empty';
                      }
                      if (passwordController.text !=
                          confirmPasswordController.text) {
                        return 'password is not matched  ';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      prefixIcon: const Icon(Icons.lock),
                      label: const Text('Confirm Password'),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const SizedBox(
                    height: 15,
                  ),



                  ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        print('every thing is ok ') ;
                      }
                    },
                    child:
                  const   Text('sign in', style: TextStyle(fontSize: 17)),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        primary: Colors.teal[700],
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
