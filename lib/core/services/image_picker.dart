import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kisan_app/application/Home/home_bloc.dart';

@LazySingleton()
class ImagePickerClass {
  void imagePicker(BuildContext context) async {
    final ImagePicker picker = ImagePicker();

    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image == null) {
      return;
    } else {
      BlocProvider.of<HomeBloc>(context)
          .add(HomeEvent.pickImage(File(image.path)));
    }
  }
}
