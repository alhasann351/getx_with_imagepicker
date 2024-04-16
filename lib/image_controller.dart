import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:image_picker/image_picker.dart';

class ImageController extends GetxController{

  RxString imagePath = ''.obs;

  Future getImage() async{
    final ImagePicker imagePicker = ImagePicker();
    final image = await imagePicker.pickImage(source: ImageSource.gallery);
    if(image != null){
      imagePath.value = image.path.toString();
    }
  }
}