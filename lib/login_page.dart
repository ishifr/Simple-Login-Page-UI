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
                        contentPadding:
                         const   EdgeInsets.symmetric(vertical: 6, horizontal: 6),
                        prefixIcon:const Padding(
                          padding:  EdgeInsets.all(12.0),
                          child: Text(
                            "Email",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide:const BorderSide(
                              color: Colors.white,
                            )),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide:const BorderSide(
                              color: Colors.white,
                              width: 4.0,
                            )),
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: BorderSide(
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ],
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
