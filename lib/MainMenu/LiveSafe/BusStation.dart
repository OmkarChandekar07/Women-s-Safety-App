import 'package:flutter/material.dart';

class Busstation extends StatelessWidget {
    final Function? onMapFunction;

  const Busstation({super.key, this.onMapFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              onMapFunction!('Bus Stations Near Me');
            },
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(height: 50,width: 50,
              child: Center(
                child: Image.asset("asset/Imges/bus-stop.png",height: 40,),
              ),),
            ),
          ),
          Text("Bus Station",style: TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}