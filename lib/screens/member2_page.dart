import 'package:assignment_project/screens/member3_page.dart';
import 'package:flutter/material.dart';

class Member2Page extends StatelessWidget {
  const Member2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green.shade50,
        appBar: AppBar(
          title: Text(
            'Member 2'
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/images/image5.jpeg'),
              ),
              SizedBox(height: 20,),

              Text(
                'Iqrar Jan',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                  'Reg-No : 2024-FU-CS-37'
              ),
              Text('Semester : 4th'),
              Text('GPA : 3.78'),

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
                      onPressed: (){
                        Navigator.push(context,
                          MaterialPageRoute(builder:
                              (context) => Member3Page(),
                          ),
                        );
                      },
                      child: Text('Next')
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
