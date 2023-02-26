 import 'package:elm/mvc/controller/error_controller.dart';
import 'package:geolocator/geolocator.dart';

 import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapController extends GetxController with ErrorController{

 @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getCurrentPosition();
  }

 void getCurrentPosition() async {
  LocationPermission permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied ||
      permission == LocationPermission.deniedForever) {
   print("Permission not given");
   LocationPermission asked = await Geolocator.requestPermission();
  } else {
   Position currentPosition = await Geolocator.getCurrentPosition(
       desiredAccuracy: LocationAccuracy.best);
   CameraPosition(
    target: LatLng(currentPosition.longitude, currentPosition.latitude),
    zoom: 15,
   );
   /*print("Longitude:" + currentPosition.longitude.toString());
      print("Latitude:" + currentPosition.latitude.toString());*/
  }
 }

 Rx selectMap = 0.obs;

 late Rx<CameraPosition> initialCameraPosition = CameraPosition(
  target: latlng[selectMap.value],
  zoom: 14.4746,
 ).obs;

 late GoogleMapController mapController;

 void onMapCreated(GoogleMapController controller) {
  mapController = controller;
 }


 void changePosition() {
  final newPosition = CameraPosition(
   target: latlng[selectMap.value],
   zoom: 14.4746,
  );
  mapController.animateCamera(CameraUpdate.newCameraPosition(newPosition));
 }

 RxList <LatLng> latlng = [
  LatLng(24.906182348304522, 91.87077641487122),
  LatLng(24.90575545593598, 91.88068058712895),
  LatLng(24.904370418195032, 91.8851034318867),
  LatLng(24.89507386732562, 91.8830394744873),
  LatLng(24.890082723330085, 91.87850871655735),
  LatLng(24.895331864395978, 91.86750143766403),
  LatLng(24.90247476673091, 91.86595916748047),
  LatLng(24.896043768321793, 91.85338476670563),
 ].obs;

 void updateSelectMapIndex(int x){
  selectMap.value=x;
 }


}