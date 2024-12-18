import 'package:flutter/material.dart';

class Hospital extends StatelessWidget {
    final Function? onMapFunction;

  const Hospital({super.key, this.onMapFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              onMapFunction!('Hospital Near Me');
            },
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(height: 50,width: 50,
              child: Center(
                child: Image.asset("asset/Imges/hospital.png",height: 40,),
              ),),
            ),
          ),
          Text("Hospital",style: TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}