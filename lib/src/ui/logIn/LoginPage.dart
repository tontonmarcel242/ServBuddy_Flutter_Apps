import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:serv_buddy/src/ui/logIn/RegistrationPage.dart';
import '../../constants/text_string.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    bool _isObscure = true;
    bool _isLoading = false;

    GlobalKey<FormState> fromKey = GlobalKey<FormState>();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Form(
        key: fromKey,
        child: Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 40),
                  Image.asset(
                    loginLogo,
                    height: 150,
                    width: 150,
                  ),
                  const SizedBox(height: 10)
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.person_outline_outlined,
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
                      EmailValidator(errorText: "Enter valid email"),
                    ]),
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _isObscure,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.black,
                        size: 18,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isObscure! ? Icons.visibility : Icons.visibility_off,
                          color: Colors.grey,
                          size: 18.0,
                        ),
                        onPressed: () {
                          _isObscure = !_isObscure;
                        },
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
                    validator: MultiValidator(
                      [
                        RequiredValidator(errorText: "* Required"),
                        MinLengthValidator(6,
                            errorText: "Password min 6 char. required"),
                        MaxLengthValidator(15,
                            errorText:
                                "Password should not be greater than 15 char."),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: () {
                        _showToast(context);
                      },
                      child: const Text(
                        "Forget password?",
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
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
                            _isLoading = !_isLoading;
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
                            )),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Opacity(
                              opacity: 0,
                              child: Icon(Icons.arrow_forward),
                            ),
                            Text(
                              "LogIn",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Align(
                    alignment: Alignment.center,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RegistrationPage()),
                        );
                      },
                      child: const Text(
                        "I have no account?",
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }

  void _showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Under development'),
        action: SnackBarAction(
            label: 'Cancel', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}
