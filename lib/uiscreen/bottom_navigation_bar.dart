import 'package:mobile_task_2/const/export.dart';
class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    SearchPage(),
    StatisticsPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            bottomNavigationIten(label: 'Home', iconData: Icons.home),
            bottomNavigationIten(label: 'Search', iconData: Icons.search),
            bottomNavigationIten(label: 'Statistics', iconData: Icons.insert_chart),
            bottomNavigationIten(label: 'Profile', iconData: Icons.person),
         /*   BottomNavigationBarItem(
                icon: Icon(Icons.home,color: Colors.black,),
                label: 'Home',
                backgroundColor: Colors.white
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search,color: Colors.black,),
                label: 'Search',
                backgroundColor: Colors.white
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.insert_chart,color: Colors.black,),
              label: 'Statistics',
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person,color: Colors.black,),
              label: 'Profile',
              backgroundColor: Colors.white,
             ),*/
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }

  bottomNavigationIten({required String label, required IconData iconData}) {
    return BottomNavigationBarItem(
        icon: Icon(
          iconData,
          color: Colors.black,
        ),
        label: label,
        backgroundColor: Colors.white);
  }
}
