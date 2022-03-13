import 'package:flutter/material.dart';
import 'package:flutter_application_logicalcode/main.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: const EdgeInsets.only(left: 10, top: 50, right: 10),
            alignment: Alignment.center,
            color: Colors.yellow,
            //  width: 200,
            //  height: 70,
            child: Column(
              children: [
                Row(
                  children: const [
                    Expanded(
                      child: Text(
                        "akashavaana",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 35,
                            color: Colors.blue,
                            fontFamily: "Raleway",
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                    Expanded(
                        child: Text(
                      "chennai to sydney",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 30,
                          color: Colors.blue,
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic),
                    ))
                  ],
                ),
                Row(
                  children: const [
                    Expanded(
                      child: Text(
                        "Air india",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 40,
                            color: Colors.blue,
                            fontFamily: "Raleway",
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                    Expanded(
                        child: Text(
                      "covai to trichy",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 30,
                          color: Colors.blue,
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.italic),
                    ))
                  ],
                ),
                myimage(),
                flightbook(),
              ],
            )));
  }
}

class myimage extends StatelessWidget {
  const myimage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage("images/img.jpg");
    Image image = Image(image: assetImage, width: 150, height: 150);
    return Container(
      child: image,
    );
  }
}

// ignore: camel_case_types
class flightbook extends StatelessWidget {
  const flightbook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white10,
      child: ElevatedButton(
        onPressed: () { 
          bookflight(context);
          },
        child: const Text(
          "Book your flight",
          style: TextStyle(
              fontFamily: "Raleway",
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w700),
        ),
        style: ElevatedButton.styleFrom(primary: Colors.purple),
      ),
    );
  }
}

void bookflight(BuildContext context) {
  var message = const AlertDialog(
      title: Text(
        "Flight booked successfully",
        style: TextStyle(fontSize: 30),
      ),
      content: Text(
        "Have a great journey",
        style: TextStyle(color: Colors.deepOrangeAccent),
      ));
  showDialog(context: context, builder: (BuildContext context) => message);
}


 