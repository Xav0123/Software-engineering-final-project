import 'package:flutter/material.dart';
var categories = <String>{"Visa", "Master", "Discover", "Amex"};
String? dropdownValue = categories.first;
String? currentValue = categories.first;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _textController = TextEditingController();
  bool validate = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Payment Method"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(children: [
              DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                style: const TextStyle(color: Colors.black),
                underline: Container(
                  height: 2,
                  color: Colors.blue[500],
                ),
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    currentValue = value;
                    dropdownValue = value!;
                  });
                },
                items: categories.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ],),
            Row(children: [
              SizedBox(width: 360,
                  child:  TextField(
                      controller: _textController,
                      decoration: InputDecoration(
                        labelText: "Card number",
                        errorText: validate ? "Please enter a valid $dropdownValue card" : null,
                        isDense: true,
                      )

                  )
              ),
              DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                style: const TextStyle(color: Colors.black),
                underline: Container(
                  height: 2,
                  color: Colors.blue[500],
                ),
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    currentValue = value;
                    dropdownValue = value!;
                  });
                },
                items: categories.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                style: const TextStyle(color: Colors.black),
                underline: Container(
                  height: 2,
                  color: Colors.blue[500],
                ),
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    currentValue = value;
                    dropdownValue = value!;
                  });
                },
                items: categories.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(width: 80,
                  child:  TextField(
                      controller: _textController,
                      decoration: InputDecoration(
                        labelText: "Security code",
                        errorText: validate ? "Please enter a valid $dropdownValue card" : null,
                        isDense: true,
                      )

                  )
              ),
            ],),
            const Row(children: [
              Text("Billing information", style: TextStyle(fontSize: 20),)
            ],),
            Row(children: [
              SizedBox(width: 160,
                  child:  TextField(
                      controller: _textController,
                      decoration: InputDecoration(
                        labelText: "First name",
                        errorText: validate ? "Please enter a valid $dropdownValue card" : null,
                        isDense: true,
                      )

                  )
              ),
              SizedBox(width: 160,
                  child:  TextField(
                      controller: _textController,
                      decoration: InputDecoration(
                        labelText: "Last name",
                        errorText: validate ? "Please enter a valid $dropdownValue card" : null,
                        isDense: true,
                      )

                  )
              ),
              SizedBox(width: 300,
                  child:  TextField(
                      controller: _textController,
                      decoration: InputDecoration(
                        labelText: "City",
                        errorText: validate ? "Please enter a valid $dropdownValue card" : null,
                        isDense: true,
                      )
                  )
              ),
            ],),
            Row(children: [
              SizedBox(width: 160,
                  child:  TextField(
                      controller: _textController,
                      decoration: InputDecoration(
                        labelText: "Billing adress",
                        errorText: validate ? "Please enter a valid $dropdownValue card" : null,
                        isDense: true,
                      )

                  )
              ),
              DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_downward),
                elevation: 16,
                style: const TextStyle(color: Colors.black),
                underline: Container(
                  height: 2,
                  color: Colors.blue[500],
                ),
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    currentValue = value;
                    dropdownValue = value!;
                  });
                },
                items: categories.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ],),
            Row(children: [
              SizedBox(width: 160,
                  child:  TextField(
                      controller: _textController,
                      decoration: InputDecoration(
                        labelText: "Billing address 2",
                        errorText: validate ? "Please enter a valid $dropdownValue card" : null,
                        isDense: true,
                      )

                  )
              ),
              SizedBox(width: 300,
                  child:  TextField(
                      controller: _textController,
                      decoration: InputDecoration(
                        labelText: "Zip code",
                        errorText: validate ? "Please enter a valid $dropdownValue card" : null,
                        isDense: true,
                      )
                  )
              ),
            ],),
            Row(children: [
              SizedBox(width: 300,
                  child:  TextField(
                      controller: _textController,
                      decoration: InputDecoration(
                        labelText: "Phone number",
                        errorText: validate ? "Please enter a valid $dropdownValue card" : null,
                        isDense: true,
                      )
                  )
              ),
            ],),
          ],
        ),
      ),
    );
  }
}
