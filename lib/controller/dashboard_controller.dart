import 'package:get/get.dart';
import 'package:parkinghawkernew/ui/home/home_screen.dart';
import 'package:parkinghawkernew/ui/my_booking/my_booking_screen.dart';
import 'package:parkinghawkernew/ui/profile/profile_screen.dart';
import 'package:parkinghawkernew/ui/saved/saved_screen.dart';

class DashboardScreenController extends GetxController {
  RxInt selectedIndex = 0.obs;

  RxList pageList = [
    const HomeScreen(),
    const SavedScreen(),
    const MyBookingScreen(isBack: false),
    const ProfileScreen(),
  ].obs;
}
