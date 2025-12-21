import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Main_Screen.dart';
import 'Registration_page.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    var email = TextEditingController();
    var password = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: height * 0.12, left: width * 0.02),
                child: const Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: width * 0.03),
                child: Text(
                  "Login For Continue",
                  style: TextStyle(
                    fontSize: height * 0.04,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(height: height * 0.10),

              TextField(
                controller: email,
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  label: const Text("Email ID or Username"),
                  labelStyle: const TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Colors.white,
                      width: 1.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.blueAccent,
                      width: 3.5,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  prefixIcon: const Icon(Icons.email, color: Colors.white),
                ),
              ),

              SizedBox(height: height * 0.05),

              TextField(
                controller: password,
                style: const TextStyle(color: Colors.white),
                obscureText: true,
                decoration: InputDecoration(
                  label: const Text("Password"),
                  labelStyle: const TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Colors.white,
                      width: 1.5,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: const BorderSide(
                      color: Colors.blueAccent,
                      width: 3.5,
                    ),
                  ),
                  prefixIcon: const Icon(Icons.lock, color: Colors.white),
                ),
              ),

              SizedBox(height: height * 0.10),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MainScreen()),
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: height * 0.07,
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 27,
                    ),
                  ),
                ),
              ),

              SizedBox(height: height * 0.01),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't Have Account ?",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegistrationPage(),
                        ),
                      );
                    },
                    child: const Text(
                      "Register",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
