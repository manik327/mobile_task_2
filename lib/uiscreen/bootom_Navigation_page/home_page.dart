import 'package:mobile_task_2/const/cards.dart';
import 'package:mobile_task_2/const/export.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  List<MyModal> myData = [
    MyModal(
        iconData: Icons.add,
        title: "GetBox Plan",
        subtitle: "Subcription",
        price: "-\$144",
        date: "18 sept 2020"),
    MyModal(
        iconData: Icons.add,
        title: "GetBox Plan1",
        subtitle: "Subcription1",
        price: "-\$1441",
        date: "18 sept 2021"),
    MyModal(
        iconData: Icons.add,
        title: "GetBox Plan2",
        subtitle: "Subcription2",
        price: "-\$1442",
        isUp: true,
        date: "19 sept 2020"),
    MyModal(
        iconData: Icons.add,
        title: "GetBox Plan",
        subtitle: "Subcription",
        price: "-\$144",
        date: "18 sept 2020"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey.shade200, body: _mainBuild());
  }

  _mainBuild() {
    return SingleChildScrollView(
      child: Column(
        children: [
          sizedBox(),
          appBar(),
          sizedBox(),
          cardView(),
          sizedBox(),
          transactionCard()
        ],
      ),
    );
  }

  appBar() {
    return Row(
      children: [
        Padding(padding: EdgeInsets.only(left: 25)),
        Column(
          children: [
            Text(
              'Hola!',
              style: TextStyle(fontSize: 20),
            ),
            Text('Kyootie',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))
          ],
        ),
        Spacer(),
        Icon(
          Icons.add_alert_sharp,
          size: 40,
        ),
        Icon(
          Icons.account_circle,
          size: 40,
        )
      ],
    );
  }

  cardView() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          cards(),
          cards(),
          cards(),
          cards(),
        ],
      ),
    );
  }

  transactionCard() {
    return Container(
        height: 600,
        width: 360,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: ListView.separated(
            itemCount: myData.length,
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return divider1();
            },
            itemBuilder: (context, index) {
              MyModal item=      myData[index];
              return transactionListItem(item: item);
            })


        );
  }
  transactionListItem({required MyModal item}){
    return row(

        text1: item.title??"",
        text2: item.subtitle??"",
        text3: item.price??"",
        text4: item.date??"",
        iconData:item.iconData?? Icons.add_box_sharp,
        color: (item.isUp??false)?Colors.red:Colors.green);

  }

  row(
      {

      required String text1,
      required String text2,
      required String text3,
      required String text4,
      required IconData iconData,
      required Color color}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(padding: EdgeInsets.fromLTRB(10, 0, 10, 0)),
        Container(
          child: Icon(
            iconData,
            size: 60,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text1,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              text2,
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
        Spacer(),
        Column(
          children: [
            Padding(padding: EdgeInsets.fromLTRB(70, 0, 70, 0)),
            Text(
              text3,
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: color),
            ),
            Text(
              text4,
              style: TextStyle(color: Colors.grey.shade700),
            ),
          ],
        ),
      ],
    );
  }

  divider({required var divider}) {
    return divider;
  }

  divider1({double? thickness, double? height}) {
    return Divider(
        thickness: thickness ?? 1,
        indent: 30,
        endIndent: 35,
        height: height ?? 1);
  }
}

class MyModal {
  final IconData? iconData;
  final String? title, subtitle, price, date;
  final bool? isUp;
  MyModal(
      {this.iconData,
      this.subtitle,
      this.title,
      this.date,
      this.price,
      this.isUp});
}
