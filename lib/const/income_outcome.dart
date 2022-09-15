 import 'package:mobile_task_2/const/export.dart';

income(){
  return Container(
    // alignment: Alignment.topLeft,
    height: 80,width: 150,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12)
    ),
    child: SizedBox(
      child: Row(
        children: [Icon(Icons.upload,size: 40,),
          Column(
            children: [
              Text("Income",style: TextStyle(fontSize: 30,color: Colors.grey.shade500),),
              Text('\$600',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
            ],
          ),
        ],
      ),
    ),
  );
 }