import 'package:flutter/material.dart';

class pswd extends StatelessWidget {
  const pswd({super.key});

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
            Text("What's the Password ?", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),),
            SizedBox(height: 10,),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",hintStyle: TextStyle(color: Colors.grey),
                border: UnderlineInputBorder(),
                suffixIcon: Icon(Icons.visibility_off)
              ),
            ),
            SizedBox(height: 15,),
            Text("Forget your Password",style: TextStyle(color: Colors.blue,fontSize: 14),)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward_ios_rounded),
        backgroundColor: Colors.blue,
        onPressed: (){
          // Navigator.push(context, MaterialPageRoute(builder: (context)=>otp()));
        },
      ),
    );
  }
}
