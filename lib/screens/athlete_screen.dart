import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AthleteScreen extends StatefulWidget {
  const AthleteScreen({Key? key}) : super(key: key);

  @override
  State<AthleteScreen> createState() => _AthleteScreenState();
}

class _AthleteScreenState extends State<AthleteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "Athletes",
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [searchBar()],
        ),
      )),
    );
  }
}

Widget searchBar() {
  return Row(
    children: [
      Container(
        decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(68, 0, 0, 0),
                blurRadius: 3.0,
                spreadRadius: 0.0,
                offset: Offset(2.0, 2.0), // shadow direction: bottom right
              )
            ],
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomLeft: Radius.circular(30),
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10))),
        width: 300,
        child: TextFormField(
          decoration: InputDecoration(
              prefixIcon: Icon(
                Icons.search,
              ),
              hintText: 'Search your event or place',
              contentPadding: EdgeInsets.all(5),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  borderSide: BorderSide(color: Colors.white, width: 3.0))),
        ),
      ),
      SizedBox(width: 5),
      Container(
          width: 50,
          decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(68, 0, 0, 0),
                  blurRadius: 3.0,
                  spreadRadius: 0.0,
                  offset: Offset(2.0, 2.0), // shadow direction: bottom right
                )
              ],
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
          child: IconButton(
            icon: Icon(
              Icons.filter_alt_rounded,
            ),
            onPressed: () {},
          )),
    ],
  );
}
