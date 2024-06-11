import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:email_validator/email_validator.dart";
import "package:adhicine/view/home_screen.dart";
import "package:adhicine/view/home_screen_filled.dart";

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _email = false;
  bool _password = true;
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 30),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 50,
            ),
            Center(
                child: Image.asset(
              "assets/medicine_logo.jfif",
              height: 150,
              width: 150,
            )),
            const SizedBox(height: 50),
            Container(
              padding: const EdgeInsets.only(
                left: 10,
              ),
              child: Text(
                "Sign In",
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        child: const Icon(
                          Icons.email,
                          color: Colors.green,
                        ),
                      ),
                      const SizedBox(width: 20),
                      SizedBox(
                        width: 300,
                        child: TextFormField(
                            validator: (value) {
                              if (!EmailValidator.validate(value!)) {
                                _email = false;
                                return "Incorrect email address";
                              } else {
                                _email = true;

                                return null;
                              }
                            },
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        child: const Icon(
                          Icons.lock,
                          color: Colors.green,
                        ),
                      ),
                      const SizedBox(width: 20),
                      SizedBox(
                        width: 300,
                        child: TextFormField(
                          validator: (value) {
                            if (!validatePassword(value!)) {
                              _password = false;
                              return "Enter Valid Password";
                            } else {
                              _password = true;
                              return null;
                            }
                          },
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(
                              suffixIcon: GestureDetector(
                            child: Icon(
                              Icons.hide_source_sharp,
                            ),
                          )),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 200),
                    child: GestureDetector(
                        child: Text(
                      "Forgot Password?",
                      style: GoogleFonts.quicksand(
                          color: Colors.blue[900], fontSize: 15),
                    )),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    height: 50,
                    width: 400,
                    child: ElevatedButton(
                        onPressed: () {
                          if (_email && _password) {
                            _formKey.currentState!.validate();

                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return HomePage();
                            }));
                          }
                        },
                        style: const ButtonStyle(
                            backgroundColor: MaterialStatePropertyAll(
                                Color.fromRGBO(100, 149, 237, 1))),
                        child: Text(
                          "Sign In",
                          style: GoogleFonts.quicksand(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        )),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const Expanded(child: Divider()),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          "OR",
                          style: GoogleFonts.quicksand(fontSize: 15),
                        ),
                      ),
                      const Expanded(
                        child: Divider(),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 60,
                    width: 500,
                    child: GestureDetector(
                      child: Image.asset(
                        "assets/continue_with_google.jfif",
                        width: 400,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 55,
                        ),
                        Text(
                          "New to Adhicine?",
                          style: GoogleFonts.quicksand(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        GestureDetector(
                          child: Text(
                            "Sign Up",
                            style: GoogleFonts.quicksand(
                              fontSize: 20,
                              color: Colors.blue[900],
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }

  bool validateEmail(String email) {
    return RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
        .hasMatch(email);
  }

  bool validatePassword(String password) {
    if (password.length < 8) {
      return false;
    }
    if (!password.contains(RegExp(r'[A-Z]')) &&
        !password.contains(RegExp(r'[a-z]'))) {
      return false;
    }
    if (!password.contains(RegExp(r'[0-9]'))) {
      return false;
    }

    if (!password.contains(RegExp(r'[!@#%^&*(),.?":{}|<>]'))) {
      return false;
    }

    return true;
  }
}
