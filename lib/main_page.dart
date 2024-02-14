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
          color: Colors.grey,
          //Gender Button
          child: const Column(
            children: [
              Row(
                children: [
                  //Male Button
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text('Male Icon'),
                        Text('Male'),
                      ],
                    ),
                  ),
                  Spacer(),
                  //Female Button
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text('Female Icon'),
                        Text('Male'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
