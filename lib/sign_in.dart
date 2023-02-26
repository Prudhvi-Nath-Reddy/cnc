import 'package:cnc/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';


class sign_in extends StatelessWidget {
  sign_in({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Builder(builder: (BuildContext context) {
          double devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
          double height =
              MediaQuery.of(context).size.height / devicePixelRatio;
          double width = MediaQuery.of(context).size.width / devicePixelRatio;
          print(height);
          print(width);

          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: const Alignment(0, -0.6),
                child: const Image(
                  // alignment: Alignment.center,
                  image: AssetImage('assets/cncfull.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Form(
                    child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(
                          color: Colors.white, fontFamily: 'Nunito'),
                      decoration: InputDecoration(
                        hintText: 'Email / Username',
                        hintStyle: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                            fontFamily: 'Nunito'),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white.withOpacity(0.5), width: 2.0),
                          borderRadius: BorderRadius.circular(3.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white.withOpacity(1), width: 1.0),
                          borderRadius: BorderRadius.circular(3.0),
                        ),
                      ),
                      cursorColor: Colors.white,
                      validator: (value) {
                        return value!.isEmpty ? 'Please enter mail' : null;
                      },
                    ),
                    const SizedBox(height: 10.0),
                    TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      style: const TextStyle(
                          color: Colors.white, fontFamily: 'Nunito'),
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                            fontFamily: 'Nunito'),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white.withOpacity(0.5), width: 2.0),
                          borderRadius: BorderRadius.circular(3.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white.withOpacity(1), width: 1.0),
                          borderRadius: BorderRadius.circular(3.0),
                        ),
                      ),
                      cursorColor: Colors.white,
                      validator: (value) {
                        return value!.isEmpty ? 'Please enter Password' : null;
                      },
                    ),
                    const SizedBox(height: 2.0),
                    Align(
                      alignment: Alignment.centerRight,
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'Forgot Password? ',
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255)
                                          .withOpacity(0.9),
                                  fontFamily: 'Nunito'),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print('Forgot Pasword Clicked');
                                })

                          // TextSpan(
                          //     text: 'Login',
                          //     style: const TextStyle(
                          //       color: Colors.blue,
                          //     ),
                          //     recognizer: TapGestureRecognizer()
                          //       ..onTap = () {
                          //         print('forgot clicked');
                          //       }),
                        ]),
                      ),
                    ),
                    // const Align
                    // (
                    //   alignment: Alignment.centerRight,
                    //   child: Text(
                    //     "Forgot Password? ",
                    //     style: TextStyle(
                    //       color: Colors.white ,
                    //       fontFamily: 'Nunito'
                    //     ),
                    //     rec
                    //     recognizer: TapGestureRecognizer()
                    //     ..onTap = ()
                    //     {
                    //       print('Login Text Clicked');
                    //     }
                    //   ),
                    // )
                    Padding(
                        padding: const EdgeInsets.fromLTRB(70, 15, 70, 0),
                        child: MaterialButton(
                          onPressed: () {},
                          minWidth: double.infinity,
                          color: const Color.fromRGBO(217, 217, 217, 0)
                              .withOpacity(0.15),
                          shape: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white.withOpacity(1), width: 1.0),
                            borderRadius: BorderRadius.circular(3.0),
                          ),
                          child: const Text(
                            "Login",
                            style: TextStyle(
                              fontFamily: 'Nunito',
                              color: Colors.white,
                            ),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Align(
                        alignment: Alignment.center,
                        child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: 'New User? ',
                                style: TextStyle(
                                    color:
                                        const Color.fromARGB(255, 255, 255, 255)
                                            .withOpacity(0.8),
                                    fontFamily: 'Nunito'),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    sign_up();
                                    print('New User clicked');
                                  })

                            // TextSpan(
                            //     text: 'Login',
                            //     style: const TextStyle(
                            //       color: Colors.blue,
                            //     ),
                            //     recognizer: TapGestureRecognizer()
                            //       ..onTap = () {
                            //         print('forgot clicked');
                            //       }),
                          ]),
                        ),
                      ),
                    ),
                  ],
                )),
              )
            ],
          );
        }),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
    );
  }
}
