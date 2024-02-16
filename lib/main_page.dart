import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int height = 110;
  int weight = 30;
  late double bmi = bmiCalculation(height: height, weight: weight);

  String gender = '';

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
          child: Column(
            children: [
              Row(
                children: [
                  //Male Button
                  GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          gender = 'M';
                        },
                      );
                    },
                    child: Container(
                      height: 175,
                      width: 160,
                      decoration: BoxDecoration(
                        color: gender == 'M' ? knormalGlassColor : kglassColor,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25.0,
                      ),
                      child: const Column(
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
                  ),
                  const Spacer(),
                  //Female Button
                  GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          gender = 'F';
                        },
                      );
                    },
                    child: Container(
                      height: 175,
                      width: 160,
                      decoration: BoxDecoration(
                        color: gender == 'F' ? knormalGlassColor : kglassColor,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 25.0,
                      ),
                      child: const Column(
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
                  ),
                ],
              ),
              const SizedBox(
                height: 50.0,
              ),
              Row(
                children: [
                  //height
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text(
                          'Height',
                          style: TextStyle(fontSize: 20.0),
                        ),
                        Text(
                          "$height",
                          style: kweightHeightFont,
                        ),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(
                                  () {
                                    if (height < 250) {
                                      height++;
                                      bmi = bmiCalculation(
                                          height: height, weight: weight);
                                    }
                                  },
                                );
                              },
                              backgroundColor: Colors.green,
                              child: const Icon(
                                Icons.add,
                                size: 30.0,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 25.0,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(
                                  () {
                                    if (height > 80) {
                                      height--;
                                      bmi = bmiCalculation(
                                          height: height, weight: weight);
                                    }
                                  },
                                );
                              },
                              backgroundColor: Colors.red,
                              child: const Icon(
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
                  const SizedBox(
                    width: 50.0,
                  ),
                  const Spacer(),
                  //weight
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Text(
                          'Weight',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        Text(
                          '$weight',
                          style: kweightHeightFont,
                        ),
                        Row(
                          children: [
                            FloatingActionButton(
                              onPressed: () {
                                setState(
                                  () {
                                    if (weight < 200) {
                                      weight++;
                                      bmi = bmiCalculation(
                                          height: height, weight: weight);
                                    }
                                  },
                                );
                              },
                              backgroundColor: Colors.green,
                              child: const Icon(
                                Icons.add,
                                size: 30.0,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 25.0,
                            ),
                            FloatingActionButton(
                              onPressed: () {
                                setState(
                                  () {
                                    if (weight > 25) {
                                      weight--;
                                      bmi = bmiCalculation(
                                          height: height, weight: weight);
                                    }
                                  },
                                );
                              },
                              backgroundColor: Colors.red,
                              child: const Icon(
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
              const SizedBox(
                height: 50.0,
              ),

              // Calculation Area
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const Padding(
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
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                bmi.toStringAsFixed(2),
                                style: bimFont,
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              const Text(
                                'Your Category is:',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20.0,
                                ),
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.circle,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                    bmiStatment(bmi),
                                    style: const TextStyle(
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

  double bmiCalculation({required height, required weight}) {
    double calValue = (weight / (height * height)) * 10000;
    return calValue;
  }

  String bmiStatment(bmi) {
    if (bmi > 30) {
      return 'Obese';
    } else if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi >= 23) {
      return 'Pre-overweight';
    } else if (bmi >= 18) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }
}
