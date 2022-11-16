import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Controller.dart';

class gtx extends StatefulWidget {
  const gtx({Key? key}) : super(key: key);

  @override
  State<gtx> createState() => _gtxState();
}

class _gtxState extends State<gtx> {
  @override
  Widget build(BuildContext context) {
    // object of class Controller
    Controller c = Get.put(Controller());
    return Scaffold(

      appBar: AppBar(
        title: Text("Getx"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: c.t1,
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
                    controller: c.t2,
                    decoration: InputDecoration(
                      hintText: "ENTER y",
                    ),
                  ),
                ),
              ),
            ],
          ),
          //access the widget which changes via obx
          Obx(() => Text("SUM: ${c.ans.value}")),
          ElevatedButton(
              onPressed: () {
                c.sum(c.t1.text, c.t2.text);
              },
              child: Text("SUM")),
        ],
      ),

    );
  }
}
