import 'package:flutter/material.dart';

class Member3Page extends StatelessWidget {
  const Member3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orange.shade50,
        appBar: AppBar(
          title: Text(
            'Member 3'
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/images/image4.jpg'),
              ),
              SizedBox(height: 20,),

              Text(
                'Jan Muhammad',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                  'Reg-No : 2024-FU-CS-18'
              ),
              Text('Semester : 4th'),
              Text('GPA : 3.83'),

              SizedBox(height: 30,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: Text("Previous"),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.popUntil(
                          context,
                              (route) => route.isFirst,
                        );
                      },
                      child: Text('Finished'),
                  ),
                ],

              )
            ],
          ),
        ),
      ),
    );
  }
}
