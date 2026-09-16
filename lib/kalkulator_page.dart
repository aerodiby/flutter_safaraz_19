import 'package:flutter/material.dart';

class KalkulatorPage extends StatefulWidget {
  const new({super.key});

  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kalkulator")),
      body: Column(
        children: [
          Text(
            "Kalkulator",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          Container(
            margin: EdgeInsets.all(50),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Input angka pertama",
                      suffixIcon: Icon(Icons.calculate),
                    ),
                  ),
                ),
                SizedBox(width: 100, height: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Input angka kedua",
                      suffixIcon: Icon(Icons.calculate),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,foregroundColor: Colors.white), onPressed: () {}, child: Text("+")),
              ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,foregroundColor: Colors.white), onPressed: () {}, child: Text("-")),
              ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,foregroundColor: Colors.white), onPressed: () {}, child: Text("X")),
              ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,foregroundColor: Colors.white), onPressed: () {}, child: Text("/")),
            ],
          ),

          Container(
            margin: EdgeInsets.all(50),
            child: Text(
              "Hasil",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ),
          ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Colors.red,foregroundColor: Colors.white), onPressed: () {}, child: Text("Reset")),
        ],
      ),
    );
  }
}
