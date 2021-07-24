import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.menu),
                      Text(
                        "Taranga",
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(Icons.notifications)
                    ],
                  ),
                ),
                Container(
                  color: Colors.white12,
                  height: 200,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 70,
                          child: Column(
                            children: [
                              Text("Portofolio Value"),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Rs 50,000'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 40),
                                child: Text("Rs 20,000"),
                              )
                            ],
                          )),
                      Expanded(
                          flex: 70,
                          child: Column(
                            children: [
                              Container(
                                color: Colors.green,
                                height: 25,
                                width: 75,
                                child: Column(
                                  children: [
                                    Text("+7.90"),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 62),
                                child: Text("Account Balance"),
                              )
                            ],
                          ))
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("My Stocks"),
                    Text("See Detail"),
                  ],
                ),
                SizedBox(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                      Container(
                        color: Colors.white,
                        height: 100,
                        width: 100,
                        child: Column(
                          children: [
                            Center(
                              child: Text(
                                "AAPL",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Text('10')
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 100,
                          height: 100,
                          color: Colors.white,
                          child: Column(
                            children: [
                              Text(
                                "AAPL",
                                style: TextStyle(color: Colors.black),
                              ),
                              Text('10')
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text("Watch list"), Text("See Detail")],
                ),
                ListTile(
                  title: Text('ACLBSL'),
                  subtitle: Text('Aarambha..'),
                  trailing: Column(
                    children: [
                      Text("Rs 1645"),
                      Container(
                        width: 75,
                        height: 25,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.red),
                        child: Text('0.9%'),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.home),
            Icon(Icons.remove_red_eye),
            Icon(Icons.rotate_left_sharp),
            Icon(Icons.person)
          ],
        ),
      ),
    );
  }
}
