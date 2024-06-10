import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:memo_mate/core/utils/assets.dart';
import 'package:memo_mate/core/utils/styles.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/custom_button.dart';

class ImagePlaceholder extends StatefulWidget {
  const ImagePlaceholder({super.key});

  @override
  State<ImagePlaceholder> createState() => _ImagePlaceholderState();
}

class _ImagePlaceholderState extends State<ImagePlaceholder> {
  XFile? _image;
  final _picker = ImagePicker();
  Future<void> _openImagePicker() async {
    final XFile? pickedImage =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _image = XFile(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _openImagePicker();
      },
      child: DottedBorder(
        borderType: BorderType.RRect,
        color: Theme.of(context).colorScheme.primary.withAlpha(155),
        radius: const Radius.circular(12),
        dashPattern: const [22, 12],
        child: _image == null
            ? Container(
                height: MediaQuery.of(context).size.height * .28,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color:
                      Theme.of(context).colorScheme.background.withOpacity(0.4),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: Theme.of(context).colorScheme.onPrimary,
                      child: SvgPicture.asset(AssetsData.imagePlaceholder),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .7,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 11.0),
                            child: Text(
                              'Upload an image,To you guidance can be clearer for you.',
                              textAlign: TextAlign.center,
                              style: Styles.textStyle14.copyWith(
                                color: Theme.of(context).colorScheme.secondary,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const CustomBotton(),
                  ],
                ),
              )
            : ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.file(
                  File(_image!.path),
                  fit: BoxFit.cover,
                ),
              ),
      ),
    );
  }
}
