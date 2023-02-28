import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Title(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {},
                    child: const Image(image: AssetImage('assets/cnc.png')),
                  ),
                  const SizedBox(
                    width: 160,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Image(
                        image: AssetImage('assets/notifications.png')),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  InkWell(
                    onTap: () {},
                    child: const Image(image: AssetImage('assets/search.png')),
                  )
                ],
              )),
          backgroundColor: Colors.black,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(4.0),
            child: Container(
              color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.6),
              height: 0.3,
            ),
          ),
        ),
      ),
    );
    throw UnimplementedError();
  }
}
