import 'package:get/get.dart';

class HomeController extends GetxController{
  
  RxInt isPressed = 0.obs;
  toogle(int index) => isPressed.value = index;
  // toogle(int index){
  //   if(isPressed.contains(index)){
  //     isPressed.remove(index);
  //   }else{
  //     isPressed.add(index);
  //   }
  // }

}