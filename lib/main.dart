import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: FormScreen(),
    );
  }
}
class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  _FormScreenState createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  TextEditingController _input = TextEditingController();
  String hasil = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("19650098 Laksamana Sulthan Alam .S"),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Column(
            children: [
              TextField(
                controller: _input,
                decoration: InputDecoration(
                  hintText: "Input Nama",
                  labelText: 'Masukkan Nama',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.0)
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.lightBlue,
                  borderRadius: BorderRadius.circular(5.0)
                ),
                child: TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.yellow),
                  ),

                  onPressed: () {
                    setState(() {
                      hasil = _input.text;
                    });
                  },
                  child: Text('Result',
                  style: TextStyle(
                    color: Colors.black,
                  ),),
                ),
              ),
              Text(hasil),
            ],
          ),
        ),
      ),
    );
  }
}

