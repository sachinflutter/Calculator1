import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  @override
  State createState() => homepagestate();
}

class homepagestate extends State<homepage> {
  dynamic num1, num2, sum = 0;
  dynamic te = TextEditingController();
  dynamic t2 = TextEditingController();

  void doaddition() {
    setState(() {
      num1 = int.parse(te.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void domuliply() {
    setState(() {
      num1 = int.parse(te.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void dosubtraction() {
    setState(() {
      num1 = int.parse(te.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void dodivision() {
    setState(() {
      num1 = int.parse(te.text);
      num2 = int.parse(t2.text);
      sum = (num1 / num2) ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Center(
          child: Text(
            "Calculator",style:TextStyle(
            fontSize: 20,color: Colors.green,
          ),
          ),
        ) ,
        ) ,

      body: Container(
        padding:  const EdgeInsets.only(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Output:${sum}",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[300]),
            ),
            TextField(controller: te,
              keyboardType: TextInputType.number,
                decoration:  const InputDecoration(
                  enabledBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.red)) ,

                  labelText: "Number1",
                  hintText: "Enter no 1",
                  prefixIcon: Icon(Icons.numbers),
                ),
                ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  enabledBorder:OutlineInputBorder(borderSide: BorderSide(color: Colors.red)) ,
                  labelText: "Number2",
                  hintText: "Enter no 2", prefixIcon: Icon(Icons.numbers)),
              controller: t2,
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  child: const Text("+"),
                  color: Colors.greenAccent,
                  elevation: 10,
                  minWidth: 100,
                  onPressed: () {
                    doaddition();
                  },
                ),
                MaterialButton(
                  child: const Text("-"),
                  color: Colors.greenAccent,
                  elevation: 10,
                  minWidth: 100,
                  onPressed: () {
                    dosubtraction();
                  },
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  child: Text("/"),
                  color: Colors.greenAccent,
                  elevation: 10,
                  minWidth: 100,
                  onPressed: () {
                    dodivision();
                  },
                ),
                MaterialButton(
                  minWidth: 100,
                  child: Text("*"),
                  color: Colors.greenAccent,
                  elevation: 10,
                  onPressed: () {
                    domuliply();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
