import 'package:flutter/material.dart';

import 'member1_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo.shade100,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/fata_university_logo.jpg',),
            fit: BoxFit.cover,
              opacity: 0.15,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.school,
                  size: 100,
                  color: Colors.indigo,
                ),
                SizedBox(height: 20,),
                Text(
                  "WelCome To Our App",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo
                  ),

                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder:
                        (context) => Member1Page(),

                        ),
                      );
                    },
                    child: Text("Next",style: TextStyle(color: Colors.white),)),

              ],
            ),
          ),
        ),

      ),
    );
  }
}
