import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memo_mate/features/addNote/presentation/manager/image_cubit/image_cubit.dart';

class ImagePlaceholder extends StatelessWidget {
  const ImagePlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ImageCubit, ImageState>(
      builder: (context, state) {
        return Visibility(
          visible: BlocProvider.of<ImageCubit>(context).visible,
          child: DottedBorder(
            borderType: BorderType.RRect,
            color: Theme.of(context).colorScheme.primary.withOpacity(0.6),
            radius: const Radius.circular(12),
            dashPattern: const [22, 12],
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Stack(
                children: [
                  Image.file(
                    File(
                        BlocProvider.of<ImageCubit>(context).image?.path ?? ''),
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    bottom: 10,
                    left: MediaQuery.of(context).size.width * .5 - 33,
                    child: CircleAvatar(
                      radius: 22,
                      backgroundColor: Theme.of(context).colorScheme.secondary,
                      child: IconButton(
                        onPressed: () {
                          BlocProvider.of<ImageCubit>(context).visible = false;
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
      },
    );
  }
}
