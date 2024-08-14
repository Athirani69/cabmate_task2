import 'package:flutter/material.dart';

Future<void> showAlertDialog(BuildContext context) async {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Choose one option"),
            IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
        content: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 300),
          child: SingleChildScrollView(
            child: ListBody(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/img.png'),
                  ),
                  title: Text("Apple"),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios_rounded),
                    onPressed: () {
                    },
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/img_1.png'),
                  ),
                  title: Text("Google"),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios_rounded),
                    onPressed: () {
                      // Add your action here
                    },
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/img_2.png'),
                  ),
                  title: Text("Faceebook"),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios_rounded),
                    onPressed: () {
                      // Add your action here
                    },
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/img_3.png'),
                  ),
                  title: Text("FaceID/TouchID"),
                  trailing: IconButton(
                    icon: Icon(Icons.arrow_forward_ios_rounded),
                    onPressed: () {
                      // Add your action here
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
