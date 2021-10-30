import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _h = MediaQuery.of(context).size.height;
    var _w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/image.png"),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: _h * 0.05,
                      right: _w * 0.07,
                    ),
                    child: const Text(
                      "Skip>>",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.center,
                height: _h / 6,
                width: _w,
                child: const Image(
                  image: AssetImage("assets/logo.png"),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: _h / 6,
                width: _w,
                child: const Image(
                  image: AssetImage("assets/login_with.png"),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                        text: "Login with\n\n",
                      ),
                      TextSpan(
                        text: "or",
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: _w / 20, vertical: _h / 20),
                child: Form(
                  child: Column(
                    children: [
                      TextFormField(
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 6, horizontal: 6),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.only(
                              left: 12.0,
                              top: 12,
                              right: 65,
                            ),
                            child: Text(
                              "Email",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                          hintText: "Example@gmail.com",
                          hintStyle: TextStyle(color: Colors.grey[400]),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: const BorderSide(
                                color: Colors.white,
                              )),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: const BorderSide(
                                color: Colors.white,
                                width: 4.0,
                              )),
                        ),
                      ),
                      SizedBox(
                        height: _h / 17,
                      ),
                      TextFormField(
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        obscureText: true,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 6, horizontal: 6),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.only(
                              left: 12.0,
                              top: 12,
                              right: 30,
                            ),
                            child: Text(
                              "Password",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                          hintText: "*******",
                          hintStyle:
                              TextStyle(color: Colors.grey[300], fontSize: 18),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: const BorderSide(
                                color: Colors.white,
                              )),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0),
                              borderSide: const BorderSide(
                                color: Colors.white,
                                width: 4.0,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        fixedSize: Size(_w / 3, _h / 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    const Text(
                      "Forget password",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: _h / 7.9,
                alignment: Alignment.bottomCenter,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(children: [
                    TextSpan(
                      text: "Don't hava a account.",
                    ),
                    TextSpan(
                        text: " Sign up.",
                        style: TextStyle(color: Colors.blue)),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
