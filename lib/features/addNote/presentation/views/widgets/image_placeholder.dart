import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:memo_mate/features/addNote/presentation/views/widgets/empty_image_placeholder.dart';

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
        color: Theme.of(context).colorScheme.primary.withOpacity(0.6),
        radius: const Radius.circular(12),
        dashPattern: const [22, 12],
        child: _image == null
            ? const EmptyImagePlaceholder()
            : ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Stack(
                  children: [
                    Image.file(
                      File(_image!.path),
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 10,
                      left: MediaQuery.of(context).size.width * .5 - 33,
                      child: CircleAvatar(
                        radius: 22,
                        backgroundColor:
                            Theme.of(context).colorScheme.secondary,
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              _image = null;
                            });
                          },
                          icon: const Icon(Icons.close),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
