import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';



Future<String> getJsonFromGithubGist() async {
  final response = await http.get(Uri.parse('https://gist.githubusercontent.com/HusseinElwakeel/5f866c3f8229e4b18f9ce9e9a8561c7e/raw'));

  if (response.statusCode == 200) {
    // If the server returns a 200 OK response, parse the JSON.
    Map<String, dynamic> json = jsonDecode(response.body);
    return await json['text_simplification_url'];
    // You can now use these variables in your app.
  } else {
    // If the server did not return a 200 OK response, throw an exception.
    throw Exception('Failed to load JSON from GitHub Gist');
  }
}
var defual_value = "ٍSorry, we can't simplify this text";



Future<String> simplify_text(String text) async {
  //new
  String api_url = await getJsonFromGithubGist();
  final response = await http.post(Uri.parse( api_url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      }, body: jsonEncode(<String, String>{'text': text,}));
  if (response.statusCode == 200) {
    return jsonDecode(response.body)['output'];
  } else {
    throw Exception('Failed to load response');

  }
}

class TextSimplification extends StatefulWidget {
  @override
  _TextSimplificationState createState() => _TextSimplificationState();
}

class _TextSimplificationState extends State<TextSimplification> {
  final TextEditingController controller = TextEditingController();

  var simplified_text = "";

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                "Text Simplification",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              maxLength: 300,
              controller: controller,
              decoration: InputDecoration(

                  // to write this in text field
                // to appear in up of the  text field
                // labelText: "Enter Your Text :",
                  hintText: "Enter Your Text :",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),

              // to identify size of text field
              maxLines: 7,

              onTap: () {},

              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          TextButton(
              onPressed: () async{
                //  get text from text field
                var text = controller.text;
                if (text.isEmpty) {
                  return;
                }

                var output = await simplify_text(text);
                // update the text field
                setState(() {
                  output = (output?.isEmpty ?? true
                      ? defual_value
                      : output!);
                  simplified_text = output;
                });
                print("Output: $output");
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    alignment: Alignment.center,
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(230 ,26, 26, 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        " Simplify",
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                        ),
                      ),
                    )),
              )),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
                alignment: Alignment.topLeft,
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all(color: Colors.red)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "$simplified_text",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                )),
          ),


        ],
      ),
    );
  }
}
