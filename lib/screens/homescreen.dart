// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app/screens/list_data.dart';
import 'package:app/widgets/calculate.dart';
import 'package:app/widgets/fied.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.sizeOf(context).height;
    final padding = EdgeInsets.symmetric(horizontal: 25, vertical: 30);
    final decoration = BoxDecoration(
      color: Colors.deepPurple,
      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
    );
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Center(
            child: Text(
              "C A L C U L A T O R",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
      body: Column(
        children: [
          Custominputfield(),
          const Spacer(),
          Container(
            height: screenheight * 0.6,
            padding: padding,
            width: double.infinity,
            decoration: decoration,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...List.generate(4, (index) => buttonlist[index]),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...List.generate(4, (index) => buttonlist[index + 4]),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ...List.generate(4, (index) => buttonlist[index + 8]),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ...List.generate(
                                  3, (index) => buttonlist[index + 12]),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ...List.generate(
                                  3, (index) => buttonlist[index + 15]),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Calculate()
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
