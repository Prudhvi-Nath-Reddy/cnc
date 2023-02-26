import 'package:flutter/material.dart';

class sign_up extends StatelessWidget {
  sign_up({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Builder(builder: (BuildContext context) {
          // double devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
          // double height =
          //     MediaQuery.of(context).size.height / devicePixelRatio;
          // double width = MediaQuery.of(context).size.width / devicePixelRatio;
          // print(height);
          // print(width);

          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height:80.0),
                Container(
                  alignment: const Alignment(0, -0.6),
                  child: const Image(
                    // alignment: Alignment.center,
                    image: AssetImage('assets/cnc.png'),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Form(
                      child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.name,
                        style: const TextStyle(
                            color: Colors.white, fontFamily: 'Nunito'),
                        decoration: InputDecoration(
                          hintText: 'Name',
                          hintStyle: TextStyle(
                              color: Colors.white.withOpacity(0.6),
                              fontFamily: 'Nunito'),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white.withOpacity(1), width: 2.0),
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
                        keyboardType: TextInputType.emailAddress,
                        style: const TextStyle(
                            color: Colors.white, fontFamily: 'Nunito'),
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(
                              color: Colors.white.withOpacity(0.6),
                              fontFamily: 'Nunito'),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white.withOpacity(1), width: 2.0),
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
                      const SizedBox(height: 10.0),
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        style: const TextStyle(
                            color: Colors.white, fontFamily: 'Nunito'),
                        decoration: InputDecoration(
                          hintText: 'New Password',
                          hintStyle: TextStyle(
                              color: Colors.white.withOpacity(0.6),
                              fontFamily: 'Nunito'),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white.withOpacity(1), width: 2.0),
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
                          hintText: 'Repeat Password',
                          hintStyle: TextStyle(
                              color: Colors.white.withOpacity(0.6),
                              fontFamily: 'Nunito'),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white.withOpacity(1), width: 2.0),
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
                      const SizedBox(height: 10.0),
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        style: const TextStyle(
                            color: Colors.white, fontFamily: 'Nunito'),
                        decoration: InputDecoration(
                          hintText: 'Phone Number',
                          hintStyle: TextStyle(
                              color: Colors.white.withOpacity(0.6),
                              fontFamily: 'Nunito'),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.white.withOpacity(1), width: 2.0),
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
                      const SizedBox(height: 5.0),
                      
                      
                      
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
                              "Signup",
                              style: TextStyle(
                                fontFamily: 'Nunito',
                                color: Colors.white,
                              ),
                            ),
                          )),
                      
                    ],
                  )),
                )
              ],
            ),
          );
          
        }),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        
      ),
    );
  }
}
