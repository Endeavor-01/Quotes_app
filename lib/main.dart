import 'package:flutter/material.dart';



// QUOTES APPPPPPP

void main() {
  runApp(const MaterialApp(

    home: Wisdom(),
  ));
}

class Wisdom extends StatefulWidget {
  const Wisdom({super.key});

  @override
  State<Wisdom> createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {
  int _index = 0;

  List quotes = [
    "Life is what happens when you're busy making other plans. - John Lennon",
    "The only way to do great work is to love what you do. - Steve Jobs",
    "In three words I can sum up everything I've learned about life: it goes on. - Robert Frost",
    "Success is not final, failure is not fatal: It is the courage to continue that counts. - Winston Churchill",
    "The greatest glory in living lies not in never falling, but in rising every time we fall. - Nelson Mandela",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quotes app',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Container(
                  width: 350,
                  height: 250,
                  margin: EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10.5),
                  ),
                  child: Center(
                      child: Text(
                        quotes[_index % quotes.length],
                        style: TextStyle(fontSize: 30.0),
                      ))),
            ),
            Divider(
              thickness: 10.3,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 29.0),
              child: Container(
                child: TextButton.icon(
                    style: TextButton.styleFrom(backgroundColor: Colors.blueAccent),
                    onPressed: _showQuotes,
                    icon: Icon(
                      Icons.wb_sunny,
                      color: Colors.white,
                    ),
                    label: Text(
                      "Inspire me",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _showQuotes() {
    setState(() {
      _index++;
    });
  }
}