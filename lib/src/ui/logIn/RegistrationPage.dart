import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import '../../constants/text_string.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

  final edtName = TextEditingController();
  final edtPhone = TextEditingController();
  final edtEmail = TextEditingController();
  final edtPass = TextEditingController();
  final edtConPass = TextEditingController();

  final List<String> areaItems = [
    'Banani',
    'Badda',
    'Dhanmondi',
    'Gulshan',
    'Mirpur',
  ];

  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> fromKey = GlobalKey<FormState>();

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: fromKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    loginLogo,
                    height: 150,
                    width: 150,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.account_circle,
                        color: Colors.black,
                        size: 18,
                      ),
                      labelText: "Name",
                      labelStyle:
                          const TextStyle(fontSize: 14, color: Colors.black),
                      hintText: "Enter your Name",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                    ),
                    validator: MultiValidator([
                      RequiredValidator(errorText: "* Required"),
                    ]),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.phone_android,
                        color: Colors.black,
                        size: 18,
                      ),
                      labelText: "Phone",
                      labelStyle:
                          const TextStyle(fontSize: 14, color: Colors.black),
                      hintText: "Enter your phone number",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                    ),
                    validator: MultiValidator([
                      RequiredValidator(errorText: "* Required"),
                    ]),
                  ),
                  const SizedBox(height: 20),
                  DropdownButtonFormField2(
                    decoration: InputDecoration(
                      //Add isDense true and zero Padding.
                      //Add Horizontal padding using buttonPadding and Vertical padding by increasing buttonHeight instead of add Padding here so that The whole TextField Button become clickable, and also the dropdown menu open under The whole TextField Button.
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      //Add more decoration as you want here
                      //Add label If you want but add hint outside the decoration to be aligned in the button perfectly.
                    ),
                    isExpanded: true,
                    hint: const Text(
                      'Select Your Area',
                      style: TextStyle(fontSize: 14),
                    ),
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black45,
                    ),
                    iconSize: 30,
                    buttonHeight: 60,
                    buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                    dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    items: areaItems
                        .map((item) =>
                        DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ))
                        .toList(),
                    validator: (value) {
                      if (value == null) {
                        return 'Please select area';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      //Do something when changing the item if you want.
                    },
                    onSaved: (value) {
                      selectedValue = value.toString();
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.email_outlined,
                        color: Colors.black,
                        size: 18,
                      ),
                      labelText: "Email",
                      labelStyle:
                          const TextStyle(fontSize: 14, color: Colors.black),
                      hintText: "Enter your email",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                    ),
                    validator: MultiValidator([
                      RequiredValidator(errorText: "* Required"),
                    ]),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.black,
                        size: 18,
                      ),
                      labelText: "Password",
                      labelStyle:
                          const TextStyle(fontSize: 14, color: Colors.black),
                      hintText: "Enter your password",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                    ),
                    validator: MultiValidator([
                      RequiredValidator(errorText: "* Required"),
                    ]),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.black,
                        size: 18,
                      ),
                      labelText: "Confirm Password",
                      labelStyle:
                          const TextStyle(fontSize: 14, color: Colors.black),
                      hintText: "Enter your confirm password",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: const BorderSide(color: Colors.red),
                      ),
                    ),
                    validator: MultiValidator([
                      RequiredValidator(errorText: "* Required"),
                    ]),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.topCenter,
                    height: 60,
                    width: 250,
                    child: SizedBox(
                      width: 250,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          if (fromKey.currentState!.validate()) {
                            
                          } else {
                            print("not valid");
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xFFc1e2d9),
                          onPrimary: const Color(0xFFc1e2d9),
                          onSurface: const Color(0xFFc1e2d9),
                          shadowColor: const Color(0xFFc1e2d9),
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Opacity(
                              opacity: 0,
                              child: Icon(Icons.arrow_forward),
                            ),
                            Text(
                              "Sign Up",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
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
