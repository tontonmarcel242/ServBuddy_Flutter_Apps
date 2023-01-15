import 'package:flutter/material.dart';
import 'package:serv_buddy/src/constants/text_string.dart';
import 'package:serv_buddy/src/ui/logIn/custom_password_field.dart';

class LoginPage extends StatelessWidget {
  //const LoginPage({super.key});
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFe2e9db),
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color(0xFFc1e2d9),
                  Color(0xFFe2e9db),
                ],
              ),
            ),
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: const AssetImage(loginLogo),
                  height: size.height * 0.2,
                ),
                TextFormField(
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person_outline_outlined, color: Colors.black,),
                      labelText: "Email",
                      labelStyle: TextStyle(color: Colors.black,),
                      hintText: "Enter your email",
                      focusedBorder: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 30.0),
                PasswordTextField(controller: passwordController),
                /*TextFormField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.fingerprint_outlined,color: Colors.black,),
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.black,),
                    hintText: "Enter your password",
                    focusedBorder: OutlineInputBorder(),
                    suffix: InkWell(
                      child: Icon(/// CHeck Show & Hide.
                        Icons.visibility_off,
                      ),
                    ),
                  ),
                ),*/
                const SizedBox(height: 30.0),
                TextButton(
                  onPressed: () {},
                  child: const Align(
                    alignment: Alignment.centerRight,
                    child: Text("Forget Password.",
                    style: TextStyle(color: Colors.black),),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Login".toUpperCase()),
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
