import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
String get_club_desc(int i, bool real) {
  if (real) {
    var image = 'assets/Lecturer.png';
    var name = 'Sports';
    if (i == 0) {
      return image;
    }
    return name;
  } else {
    var image = 'assets/dummy_club.png';
    var name = '         ';
    if (i == 0) {
      return image;
    }
    return name;
  }
}

dynamic get_club(bool real) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(
        height: 50,
        width: 70,
        child: InkWell(
          onTap: () {},
          child: Image(
            image: AssetImage(
              get_club_desc(0, real),
            ),
            color: Colors.white,
            // width: 47,
            // height: 48,
            alignment: Alignment.center,
          ),
        ),
      ),
      SizedBox(
        height: 40,
        width: 70,
        child: Text(
          get_club_desc(1, real),
          textAlign: TextAlign.center,
          style: const TextStyle(fontFamily: 'Nunito', color: Colors.white),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
    ],
  );
}

dynamic get_club_2(int n, bool real) {
  List<Widget> mywidgets = [];
  for (int x = 0; x < n; x++) {
    mywidgets.add(Container(
      child: get_club(true),
    ));
  }
  if (!real) {
    for (int x = 0; x < 4 - n; x++) {
      mywidgets.add(Container(
        child: get_club(false),
      ));
    }
  }

  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, children: mywidgets),
  );
}

dynamic get_club_3(int n) {
  List<Widget> mywidgets = [];
  for (int x = 0; n > 0; x++) {
    if (n > 3) {
      mywidgets.add(Container(
        child: get_club_2(4, true),
      ));
    } else {
      mywidgets.add(Container(
        child: get_club_2(n, false),
      ));
    }
    n = n - 4;
  }
  return Column(children: mywidgets);
}

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    var collegeName = "IIITB";
    var collegeLocation = "Banglore";
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
        body: SingleChildScrollView(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    collegeName,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      fontFamily: 'Nunito',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    collegeLocation,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.6),
                      fontFamily: 'Nunito',
                    ),
                  ),
                )
              ],
            ),
            Container(
              color: Color.fromARGB(255, 255, 255, 255).withOpacity(0.4),
              height: 0.5,
            ),
            Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [get_club_3(21)],
                ))
          ]),
        ),
      ),
    );
    // TODO: implement build
    throw UnimplementedError();
  }
}
