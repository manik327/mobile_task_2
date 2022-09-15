import '../const/export.dart';
class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
int currentIndex=0;
  CarouselController controller=CarouselController();
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SizedBox(
            height: getFullHeight(context: context),
            child: CarouselSlider.builder(
                carouselController:controller ,
              itemCount: 2,
                itemBuilder: (context, index, realIndex){
              return Image.asset('assets/images/app$index.jpeg',fit: BoxFit.cover,);
                },
                options: CarouselOptions(
                   onPageChanged: (int index, CarouselPageChangedReason reason){
                     currentIndex=index;
                     setState((){

                     });
                   },
                  aspectRatio: 2,
                  enlargeCenterPage: true,
                  viewportFraction: 1,
                  enlargeStrategy: CenterPageEnlargeStrategy.scale,
                  height: MediaQuery.of(context).size.height,
                  autoPlay: true,
                ),
          ),
          ),
          Positioned(
              bottom: 20,
              child:
              Container(
              //  width: getFullWidth(context: context),
               width: MediaQuery.of(context).size.width,height: 20,
                alignment: Alignment.center,
                child: indicatorListView(),
              ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.fromLTRB(330, 750, 0, 0),
            child: circleAvatar((){
              Navigator.pushNamed(context, '/bottomnavigation');
            }),
          )
        ],
      ),
    );
  }

indicatorListView(){
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 2,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return indicatorListItem(isActive: index==currentIndex
          );
        });
}
  indicatorListItem({ required bool isActive}){
    return Container(
      height: 10,
      width: 10,
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        color: isActive?Colors.black:Colors.red,
        shape: BoxShape.circle
      ),
    );
  }
}
