import 'package:flutter/material.dart';

import 'member2_page.dart';

class Member1Page extends StatelessWidget {
  const Member1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue.shade50,
        appBar: AppBar(
          title: Text("Member 1"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/images/image6.jpeg'),
              ),
              SizedBox(height: 20,),
              
              Text(
                'Muhammad Ibrar',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              
              Text(
                'Reg-No : 2024-FU-CS-33'
              ),
              Text('Semester : 4th'),
              Text('Section : A'),
              Text('GPA : 3.85'),
              
              SizedBox(height: 30,),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.indigo
                    ),
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      child: Text("Previous",style: TextStyle(color: Colors.white),),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.indigo
                      ),
                      onPressed: (){
                        Navigator.push(context,
                        MaterialPageRoute(builder:
                        (context) => Member2Page(),
                        ),
                        );
                      },
                      child: Text('Next',style: TextStyle(color: Colors.white),))

                ],
              )
            ],
          ),
        ),
  
      ),
    );
  }
}
