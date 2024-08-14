import 'package:cabmate_task2/alertlogin.dart';
import 'package:cabmate_task2/otp.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';


class login extends StatelessWidget {
  const login({super.key});

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
              icon: Icon(Icons.arrow_back, color: Colors.black), onPressed: () {},
            ),
        ),
      ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Enter your mobile number", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),),
            SizedBox(height: 16),
            IntlPhoneField(
              initialCountryCode: 'IN',
              ),
            SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                showAlertDialog(context);
              },
                child:
                Text("or choose other login options ➡️", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.blue),)),
            SizedBox(height: 20,),
            RichText(
              text: TextSpan(
                text: 'By creating or logging into an account, you’re agreeing with our ',
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Terms and Conditions',
                    style: TextStyle(color: Colors.blue),
                  ),
                  TextSpan(
                    text: ' and ',
                    style: TextStyle(color: Colors.black),
                  ),
                  TextSpan(
                    text: 'Privacy Policy.',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward_ios_rounded),
        backgroundColor: Colors.blue,
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>otp()));
        },
      ),

    );
  }
}
