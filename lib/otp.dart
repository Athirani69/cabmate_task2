import 'package:cabmate_task2/password.dart';
import 'package:flutter/material.dart';

class otp extends StatelessWidget {
  const otp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black,width: 1)
            ),
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black), onPressed: () {
                Navigator.pop(context);
            },
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("What's the code ?", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),),
            SizedBox(height: 10,),
            Text("Enter the code sent to +8937489320",style: TextStyle(color: Colors.grey),),
            SizedBox(height: 10,),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter code",hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(),
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 15,),
            Text("Retry",style: TextStyle(color: Colors.blue,fontSize: 14),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward_ios_rounded),
        backgroundColor: Colors.blue,
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>pswd()));
        },
      ),
    );
  }
}
