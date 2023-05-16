import 'package:flutter/material.dart';
class bmi extends StatefulWidget {
  const bmi({Key? key}) : super(key: key);

  @override
  State<bmi> createState() => _bmiState();
}

class _bmiState extends State<bmi> {
  final TextEditingController height=TextEditingController();
  final TextEditingController weight=TextEditingController();
  double result=0;
  void calculate(){
    double heightcm=double.parse(height.text);
    double weightd=double.parse(weight.text);
    double heightm=heightcm/100;
    double heightsquare=heightm*heightm;
    result=weightd/heightsquare;
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: height,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(),
                    icon: Icon(Icons.trending_up),
                    hintText: 'height'
                ),
              ),

              SizedBox(
                height: 15,
              ),
              TextField(
                  controller: weight,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(),
                      icon: Icon(Icons.line_weight),
                      hintText: 'weight'
                  )
              ),
              SizedBox(
                height: 15,
              ),
              TextButton(
                  style:ButtonStyle(
                      backgroundColor:MaterialStatePropertyAll(
                          Colors.blue) ),onPressed: (){calculate();} ,
                  child: Text("calculate",
                style: TextStyle(color: Colors.white,fontSize: 20),
              )
              ),
              SizedBox(
                height: 15,
              ),

              Text('Result',
                style: TextStyle(
                    color: Colors.white,
                    backgroundColor: Colors.black,fontSize: 15),
              ),
              SizedBox(
                height: 15,
              ),
              Text(result==null?"enter value":"${result.toStringAsFixed(2)}"),

            ],
          ),
        ),
      ),
    );
  }
}
