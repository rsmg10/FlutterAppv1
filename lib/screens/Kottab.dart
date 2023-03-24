import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:messengerclone/blocks/BMICardContent.dart';
import 'package:messengerclone/blocks/Fields/custom_form_field.dart';
import 'package:messengerclone/models/SigninModels.dart';

import '../blocks/Fields/CustomNumberWithButtons.dart';

class Kottab extends StatefulWidget {
  const Kottab({Key? key}) : super(key: key);

  @override
  State<Kottab> createState() => _kottab();
}

class _kottab extends State<Kottab> {

  TextEditingController numController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
bool visible = true;

  @override
  void initState() {
    super.initState();
  }
      var _formState = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color(0xD0D0D0D0),
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),

      body: Center(
        child: Visibility(
          visible: visible,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Ink.image(image: NetworkImage("https://cdn.pixabay.com/photo/2023/01/26/18/11/leaves-7746730_960_720.png")),
              CustomNumberWithButtons(numController: numController,),
              Form(key: _formState,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomFormField(
                          fieldContrller: emailController,
                          hintText: "email please",
                          isObsecure: false,
                            inputFormatters: [
                              FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]')),
                              FilteringTextInputFormatter.deny(RegExp('[abFeG]')),
                            ],
                          validator: (val){
                            if (val!.length >=5)
                              return "false";
                          },

                        ),
                        CustomFormField(
                          fieldContrller: passwordController,
                          hintText: "Password",
                          isObsecure: true,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]')),
                            FilteringTextInputFormatter.deny(RegExp('[abFeG]')),
                          ],
                          validator: (val){
                            if (val!.length >=5)
                              return "false";
                          },

                        ),
                        TextButton(onPressed: (){

                          setState(() {

                          _fetchData(context);
                            // visible = false;
                          });
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) {
                          //       return KottabPage(email: emailController.text, password: passwordController.text );
                          //     },
                          //   ),
                          // );

                            // if(_formState.currentState!.validate()){
                            //     print(emailController.text);
                            //     print(passwordController.text);
                            // }else print("cann do no such thing");

                        }, child: Text("lol"))
                      ],
                  ),)
            ],
          ),
        ),
      ),
    );
  }

  void _fetchData(BuildContext context, [bool mounted = true]) async {
    // show the loading dialog
    showDialog(
      // The user CANNOT close this dialog  by pressing outsite it
        barrierDismissible: false,
        context: context,
        builder: (_) {
          return Dialog(
            // The background color
            backgroundColor: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  // The loading indicator
                  CircularProgressIndicator(),
                  SizedBox(
                    height: 15,
                  ),
                  // Some text
                  Text('Loading...')
                ],
              ),
            ),
          );
        });

    // Your asynchronous computation here (fetching data from an API, processing files, inserting something to the database, etc)
    await Future.delayed(const Duration(seconds: 3));
    var signinDto = await Signin(emailController.text, passwordController.text);

    // Close the dialog programmatically
    // We use "mounted" variable to get rid of the "Do not use BuildContexts across async gaps" warning
    if (!mounted) return;
    Navigator.of(context).pop();
  }

  Future<String> Signin(String email, String password) async {

    var body = new SigninDto(password: password, Username: email);

    final url = Uri.parse('https://localhost:50061/api/Auth/Sign');
    final headers = {"Content-type": "application/json", "Access-Control-Allow-Origin": "*"};
    var jsoned = jsonEncode(body);
    final response = await http.post(url, headers: headers,body: jsoned);
    return jsoned;
  }








}

