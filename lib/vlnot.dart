import 'package:flutter/material.dart';

class vlnot extends StatelessWidget {

  //variable that changes value
  ValueNotifier<int> a = ValueNotifier(0);
  ValueNotifier<int> sum = ValueNotifier(0);
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Value notifier"),
      ),
      body: Column(

        children: [
          //access the widget which changes via ValueListenableBuilder
          ValueListenableBuilder(
            valueListenable: a,
            builder: (context, value, child) {
              return Text("${value}");
            },
          ),
          ElevatedButton(
              onPressed: () {
                //varname.value --- to assign value
                a.value++;
              },
              child: Text("Click to increment")),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller:t1,
                    decoration: InputDecoration(
                      hintText: "ENTER X",
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller:t2,
                    decoration: InputDecoration(
                      hintText: "ENTER y",
                    ),
                  ),
                ),
              ),
            ],
          ),
          //access the widget which changes via ValueListenableBuilder
          ValueListenableBuilder(valueListenable: sum, builder: (context, value, child) {
            return Text("SUM: ${value}");
          },),
          ElevatedButton(
              onPressed: () {
                int x=int.parse(t1.text);
                int y=int.parse(t2.text);
                //varname.value --- to assign value
                sum.value=x+y;
              },
              child: Text("SUM")),
        ],
      ),
    );
  }
}
