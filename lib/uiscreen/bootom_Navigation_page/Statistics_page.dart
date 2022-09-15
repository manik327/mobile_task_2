import 'package:mobile_task_2/const/export.dart';
import 'package:mobile_task_2/const/size_box.dart';

import '../../const/income_outcome.dart';

class StatisticsPage extends StatefulWidget {
  const StatisticsPage({Key? key}) : super(key: key);

  @override
  State<StatisticsPage> createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage>  with TickerProviderStateMixin{
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
      setState(() {});
    });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Center(
        child: Column(
          children: [
            sizedBox(),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Statistics Transactions',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),)
              ],
            ),
            sizedBox(),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                income(),
                income(),              ],
            ),
            sizedBox(),
            Container(
              height: 170,width: 340,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12)
              ),
              child: SizedBox(
                child: Stack(
                  children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CircularProgressIndicator(
                          value: controller.value,
                          semanticsLabel: 'Circular progress indicator',
                        ),
                      ],
                ),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 100)),
                          Container(
                              child: Text('TODAY ',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                          Text('REVENUE',style: TextStyle(fontSize: 20),),
                    ],
                  ),
                  ],
                )
              ]
                ),
            )
            ),
            sizedBox(),
            Container(
              height: 300,
              width: 340,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12)
              ),
              child: SizedBox(
                child: Text('asfs'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
