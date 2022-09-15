import './export.dart';
circleAvatar(
    Function onTap
    ){
  return  CircleAvatar(
        radius: 30,
        backgroundColor: Colors.white38,
        child: IconButton(
          color: Colors.black,
          onPressed: (){
            onTap();
          },
          tooltip: 'next',
          icon: Icon(Icons.arrow_forward),
        ) );
}