import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

part 'image_state.dart';

class ImageCubit extends Cubit<ImageState> {
  ImageCubit() : super(ImageInitial());

  bool visible = false;
  String imagePath = '';

  final _picker = ImagePicker();
  Future<void> openImagePicker() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      visible = true;
      imagePath = pickedImage.path;
      emit(ImageSelected());
    }
  }

  Future<void> closeImage() async {
    visible = false;
    emit(ImageSelected());
  }
}
