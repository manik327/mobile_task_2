import 'package:mobile_task_2/uiscreen/bottom_navigation_bar.dart';
import './const/export.dart';
class Routes{
  static const String home = '/';
  static const String  bottomnavigation = '/bottomnavigation';


  static Map<String,WidgetBuilder>routes={
  home : (context) => FirstScreen(),
    bottomnavigation : (context) => BottomNavigation(),

};
}