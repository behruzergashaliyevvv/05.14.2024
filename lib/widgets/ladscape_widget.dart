import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BoxesRow extends StatelessWidget {
  const BoxesRow({super.key});
  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double bodyHeight = MediaQuery.of(context).size.height -
    //     AppBar().preferredSize.height -
    //     MediaQuery.of(context).viewPadding.top;
    return Column(
      children: [
        Column(
          children: [
            Container(
              width: 412,
              height: 800,
              child: Column(
                children: [
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () async {
                          DateTime? date = await showDatePicker(
                            context: context,
                            firstDate: DateTime(2000),
                            lastDate: DateTime(3000),
                          );
                        },
                        child: Text(
                          "August, 2022",
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "1.914.000",
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Stack(
                    children: [
                      Container(
                        width: 412,
                        height: 653,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 205, 228, 246),
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(50),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: 370,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Text("Oylik Budjet:     "),
                                            Icon(
                                              Icons.edit,
                                              color: Colors.blue,
                                            ),
                                            TextButton(
                                              onPressed: () {},
                                              child: Text(
                                                "100.000.000",
                                                style: TextStyle(
                                                    color: Colors.blue),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Text(
                                        "100%",
                                        style: TextStyle(color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  Container(
                                    width: 320,
                                    height: 2,
                                    color: Colors.blue,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Stack(
                        children: [
                          Positioned(
                            child: Container(
                              margin: EdgeInsets.only(top: 100),
                              width: 412,
                              height: 553,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(50),
                                ),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 20),
                                  Container(
                                    width: 370,
                                    height: 70,
                                    // color: Colors.amber,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          "assets/images/clocks.png",
                                          scale: 15,
                                        ),
                                        Container(
                                          width: 130,
                                          height: 50,
                                          // color: Colors.red,
                                          child: Column(
                                            children: [
                                              Text(
                                                "Qovun",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20),
                                              ),
                                              Text(
                                                "14-May-2021",
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              )
                                            ],
                                          ),
                                        ),
                                        Text(
                                          "20.000",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 18),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 370,
                                    height: 1,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(height: 20),
                                  Container(
                                    width: 370,
                                    height: 70,
                                    // color: Colors.amber,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          "assets/images/clocks.png",
                                          scale: 15,
                                        ),
                                        Container(
                                          width: 130,
                                          height: 50,
                                          // color: Colors.red,
                                          child: Column(
                                            children: [
                                              Text(
                                                "Olma",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20),
                                              ),
                                              Text(
                                                "14-May-2021",
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              )
                                            ],
                                          ),
                                        ),
                                        Text(
                                          "20.000",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 18),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 370,
                                    height: 1,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(height: 20),
                                  Container(
                                    width: 370,
                                    height: 70,
                                    // color: Colors.amber,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          "assets/images/clocks.png",
                                          scale: 15,
                                        ),
                                        Container(
                                          width: 130,
                                          height: 50,
                                          // color: Colors.red,
                                          child: Column(
                                            children: [
                                              Text(
                                                "Tarvuz",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20),
                                              ),
                                              Text(
                                                "14-May-2021",
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              )
                                            ],
                                          ),
                                        ),
                                        Text(
                                          "500.000",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 18),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 370,
                                    height: 1,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(height: 20),
                                  Container(
                                    width: 370,
                                    height: 70,
                                    // color: Colors.amber,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          "assets/images/clocks.png",
                                          scale: 15,
                                        ),
                                        Container(
                                          width: 130,
                                          height: 50,
                                          // color: Colors.red,
                                          child: Column(
                                            children: [
                                              Text(
                                                "Olcha",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20),
                                              ),
                                              Text(
                                                "14-May-2021",
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              )
                                            ],
                                          ),
                                        ),
                                        Text(
                                          "50.000",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 18),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 370,
                                    height: 1,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(height: 20),
                                  Container(
                                    width: 370,
                                    height: 70,
                                    // color: Colors.amber,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          "assets/images/clocks.png",
                                          scale: 15,
                                        ),
                                        Container(
                                          width: 130,
                                          height: 50,
                                          // color: Colors.red,
                                          child: Column(
                                            children: [
                                              Text(
                                                "Qulpnay",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20),
                                              ),
                                              Text(
                                                "14-May-2021",
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              )
                                            ],
                                          ),
                                        ),
                                        Text(
                                          "124.000",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 18),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 370,
                                    height: 1,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(height: 20),
                                  Container(
                                    width: 370,
                                    height: 70,
                                    // color: Colors.amber,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          "assets/images/clocks.png",
                                          scale: 15,
                                        ),
                                        Container(
                                          width: 130,
                                          height: 50,
                                          // color: Colors.red,
                                          child: Column(
                                            children: [
                                              Text(
                                                "Karam",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20),
                                              ),
                                              Text(
                                                "14-May-2021",
                                                style: TextStyle(
                                                    color: Colors.grey),
                                              )
                                            ],
                                          ),
                                        ),
                                        Text(
                                          "200.000",
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 18),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 370,
                                    height: 1,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class AppHomeLadscape extends StatelessWidget {
  const AppHomeLadscape({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.blue[600],
      title: Text(
        "Mening hamyonim",
        style: TextStyle(color: Colors.white),
      ),
      centerTitle: true,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
