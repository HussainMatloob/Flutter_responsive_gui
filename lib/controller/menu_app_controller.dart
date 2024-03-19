import 'package:flutter/material.dart';
import 'package:get/get.dart';
class MenuAppController extends GetxController{//with ChangeNotifier
final GlobalKey<ScaffoldState> _scaffoldKey=GlobalKey<ScaffoldState>();
GlobalKey<ScaffoldState> get scaffoldKey=>_scaffoldKey;
void controllerMenu(){
 if(!_scaffoldKey.currentState!.isDrawerOpen){
   _scaffoldKey.currentState!.openDrawer();
     update();
 }
}
}