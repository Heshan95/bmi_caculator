import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //AppBar Area
        appBar: AppBar(
          title: const Text(
            'BIM Calculator',
            style: TextStyle(color: Colors.black54),
          ),
          actions: [
            IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('This is undo Button'),
                  ),
                );
              },
              icon: const Icon(
                Icons.undo,
              ),
              tooltip: 'Undo',
            ),
            IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('This is Ad Block Button'),
                  ),
                );
              },
              icon: const Icon(
                Icons.block,
              ),
              tooltip: 'Ad Block',
            ),
            IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('This is More'),
                  ),
                );
              },
              icon: const Icon(
                Icons.more_vert,
              ),
              tooltip: 'More',
            ),
          ],
        ),

        //Body Area
        body: Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          //Gender Button
          child: const Column(
            children: [
              Row(
                children: [
                  //Male Button
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 25.0,
                    ),
                    child: Column(
                      children: [
                        Icon(
                          Icons.male_sharp,
                          size: 120.0,
                          color: ktextColor,
                        ),
                        Text(
                          'Male',
                          style: TextStyle(
                            fontSize: 22.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  //Female Button
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 25.0,
                    ),
                    child: Column(
                      children: [
                        Icon(
                          Icons.female_sharp,
                          size: 120.0,
                          color: ktextColor,
                        ),
                        Text(
                          'Female',
                          style: TextStyle(
                            fontSize: 22.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              Row(
                children: [
                  //height
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          'Height',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Text(
                          '170',
                          style: kweightHeightFont,
                        ),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: null,
                              backgroundColor: Colors.green,
                              child: Icon(
                                Icons.add,
                                size: 30.0,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 25.0,
                            ),
                            FloatingActionButton(
                              onPressed: null,
                              backgroundColor: Colors.red,
                              child: Icon(
                                Icons.remove,
                                size: 30.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 50.0,
                  ),
                  Spacer(),
                  //weight
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          'Weight',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          '70',
                          style: kweightHeightFont,
                        ),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: null,
                              backgroundColor: Colors.green,
                              child: Icon(
                                Icons.add,
                                size: 30.0,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 25.0,
                            ),
                            FloatingActionButton(
                              onPressed: null,
                              backgroundColor: Colors.red,
                              child: Icon(
                                Icons.remove,
                                size: 30.0,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50.0,
              ),

              // Calculation Area
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text(
                            'Your BMI Score: ',
                            style: TextStyle(
                              fontSize: 25.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                '25.0',
                                style: bimFont,
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                'Your Category is:',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                ),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                    'Underweight',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onHeightMinus() {
    print('height minus');
  }
}
