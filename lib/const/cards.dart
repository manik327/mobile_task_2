import 'export.dart';

cards(){
  return Container(
    margin: EdgeInsets.only(right: 20),
    height: 240,width: 300,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
            image: AssetImage('assets/images/app1.jpeg'),fit: BoxFit.cover
        )
    ),
    child: SizedBox(
      child: Column(
        children: [
          Padding(padding: EdgeInsets.fromLTRB(20, 10, 20, 0)),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(' JENYUS',style: TextStyle(fontSize: 30),),
              Stack(
                children: [
                  Container(height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(50)
                    ),
                  ),
                  Positioned(
                    left: 14,
                    child: Container(height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    child: Container(height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(50)
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

          Container(margin: EdgeInsets.only(left: 200),
            child: Text('Mastercard'),),
          sizedBox(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(alignment: Alignment.topLeft,
                  child: Text('  0824 3324 2314 2424')),
              Container(child: Text('  08/21')),sizedBox(),
              Container(child: Text('  Kyootie')),
            ],
          ),
          Container(child: Text('Balance'),),
          Container(padding: EdgeInsets.fromLTRB(70, 0, 0, 0),child: Text("\$4300,00",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),)
        ],
      ),
    ),
  );
}