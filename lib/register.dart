// ignore_for_file: must_be_immutable, file_names

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];
   ////////////////

  List<String> valuesOfCheckList = [] ;
  bool checkBoxv1 = false;
  bool checkBoxv2 = false;
  bool checkBoxv3 = false;
  bool checkBoxv4 = false;

  String? selectedOption;

  List<bool> checkedItems = List<bool>.filled(3, false);

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
                      label:
                          const Text(' Contact Person Name (mandatory field)'),
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
                              'company industry 1 ',
                              style: TextStyle(fontSize: 17.0),
                            ),
                            controlAffinity: ListTileControlAffinity.leading,
                            checkColor: Colors.greenAccent,
                            onChanged: (value) {
                              setState(() {
                                checkBoxv1 = !checkBoxv1;
                              });
                            },
                            value: checkBoxv1,
                          ),
                          CheckboxListTile(
                            title: Text(
                              'company industry 1 ',
                              style: TextStyle(fontSize: 17.0),
                            ),
                            controlAffinity: ListTileControlAffinity.leading,
                            checkColor: Colors.greenAccent,
                            onChanged: (value) {
                              setState(() {
                                checkBoxv2 = !checkBoxv2;
                              });
                            },
                            value: checkBoxv2,
                          ),
                          CheckboxListTile(
                            title: Text(
                              'company industry 1 ',
                              style: TextStyle(fontSize: 17.0),
                            ),
                            controlAffinity: ListTileControlAffinity.leading,
                            checkColor: Colors.greenAccent,
                            onChanged: (value) {
                              setState(() {
                                checkBoxv3 = !checkBoxv3;
                              });
                            },
                            value: checkBoxv3,
                          ),
                          CheckboxListTile(
                            title: Text(
                              'company industry 1 ',
                              style: TextStyle(fontSize: 17.0),
                            ),
                            controlAffinity: ListTileControlAffinity.leading,
                            checkColor: Colors.greenAccent,
                            onChanged: (value) {
                              setState(() {
                                checkBoxv4 = !checkBoxv4;
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
                    keyboardType: TextInputType.emailAddress,
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
                      suffixIcon: DropdownButtonFormField( decoration: InputDecoration(
                        hintText: "   Company Size" ,
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white))),
                        value: selectedOption,
                        onChanged: (newValue) {
                          setState(() {
                            selectedOption = newValue;
                          });
                        },
                        items: items.map<DropdownMenuItem<String>>((String value) {
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
                      if(passwordController.text.length < 8){
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
                      if(passwordController.text != confirmPasswordController.text ){
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
