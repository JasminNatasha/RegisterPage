
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Widget/background.dart';
import 'Widget/BodyParts.dart';
import 'Widget/registerBottom.dart';
import 'Widget/registerHeader.dart';

// Constant -----------------------------------------------------------------------------\
const String screenDesc =
    'Register  your details to access all \n iKWKPK services';
const String screenName = "R E G I S T E R";

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // VARIABLE ------------------------------------------------------------\
  bool status = false;

  // BUILDER -------------------------------------------------------------\
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: BackgroundBody(
        body: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            RegisterHeader(
              description: screenDesc,
              title: screenName,
            ),
            ProfilePicture(),
            TextTitle(text:"YOUR PICTURE"),
            StandardTextFormField(hintText: 'FIRST NAME'),
            StandardTextFormField(hintText: 'LAST NAME'),
            StandardTextFormField(hintText: 'MOBILE PHONE NO'),
            StandardTextFormField(hintText: 'EMAIL (OPTIONAL)'),
            SecuredTextFormField(hintText: 'PASSWORD'),
            Switcher(hintText: "I AM SARAWAKIAN"),
            SubmitButton(action: () {}, name: screenName),
            
          ],
          ),
        ),
       ),
    );
  }
}
