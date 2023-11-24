import 'package:get/get.dart';
import 'package:movies_app/api/api_service.dart';
import 'package:movies_app/models/person.dart';

// class PersonsController extends GetxController {
//   var isLoading = false.obs;
//   var mainPopularPersons = <Person>[].obs;
//   var savedPersonList = <Person>[].obs;
//   @override
//   void onInit() async {
//     isLoading.value = true;
//     mainPopularPersons.value = (await ApiService.getPopularPersons())!;
//     isLoading.value = false;
//     super.onInit();
//   }

//   bool isInWatchList(Person person) {
//     return savedPersonList.any((m) => m.id == person.id);
//   }

//   void addToWatchList(Person person) {
//     if (savedPersonList.any((m) => m.id == person.id)) {
//       savedPersonList.remove(person);
//       Get.snackbar('Success', 'removed from watch list',
//           snackPosition: SnackPosition.BOTTOM,
//           animationDuration: const Duration(milliseconds: 500),
//           duration: const Duration(milliseconds: 500));
//     } else {
//       savedPersonList.add(person);
//       Get.snackbar('Success', 'added to watch list',
//           snackPosition: SnackPosition.BOTTOM,
//           animationDuration: const Duration(milliseconds: 500),
//           duration: const Duration(milliseconds: 500));
//     }
//   }
// }

class PersonsController extends GetxController {
  var isLoading = false.obs;
  var popularPersons = <Person>[].obs;

  @override
  void onInit() async {
    isLoading.value = true;
    popularPersons.value = (await ApiService.getPopularPersons())!;
    isLoading.value = false;
    super.onInit();
  }

  // Add other functionalities specific to persons if needed
}
