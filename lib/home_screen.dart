import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:komalswork/Login/login.dart';
import 'package:komalswork/widgets/custom_button.dart';
import 'package:komalswork/widgets/custom_textfield.dart';



class HomeScreen extends StatefulWidget {
   const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  TextEditingController empcodecontroller = TextEditingController();
  String fetchedData = '';

  Future<void> fetchSearchResults(String attributeName, String attributeValue) async {

    const  String apiUrl = 'https://crudcrud.com/api/b931182909674f759f50605bff50d55b/unicorns';

    try {
      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        final filteredData = data.where((item) => item[attributeName] == attributeValue).toList();
        print(response.body);
        setState(() {
          fetchedData = filteredData.isNotEmpty ? filteredData.toString() : 'No data found';
        });
      } else {
        setState(() {
          fetchedData = 'Failed to load data';
        });
      }
    } catch (e) {
      setState(() {
        fetchedData = 'Error: $e';
      });
    }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AM-05'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginScreen()
                ),
            );
          },
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomTextField(controller: empcodecontroller, obscuretext: false, label:"Enter Employee Card No. here" , hinttext: "Enter Employee Card No. here"),
                  const SizedBox(height: 10),
                  CustomButton(onpressed: () {
                    fetchSearchResults("EMP_CODE", empcodecontroller.text);
                  },
                  buttontext: "Show"),
                  const SizedBox(height: 20),
                  Text(fetchedData.isNotEmpty
                      ? fetchedData
                      : "No data fetched yet"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

