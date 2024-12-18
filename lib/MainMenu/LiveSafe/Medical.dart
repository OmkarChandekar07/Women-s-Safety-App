import 'package:flutter/material.dart';

class Medical extends StatelessWidget {
    final Function? onMapFunction;

  const Medical({super.key, this.onMapFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              onMapFunction!('Medical Stations Near Me');
            },
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(height: 50,width: 50,
              child: Center(
                child: Image.asset("asset/Imges/pharmacy.png",height: 40,),
              ),),
            ),
          ),
          Text("Medical",style: TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}