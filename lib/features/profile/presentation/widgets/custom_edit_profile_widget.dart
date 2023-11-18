import 'dart:io';

 import 'package:dalel/core/utils/app_color.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EditProfileSectionWidget extends StatefulWidget {
  const EditProfileSectionWidget({super.key});

  @override
  State<EditProfileSectionWidget> createState() =>
      _EditProfileSectionWidgetState();
}

class _EditProfileSectionWidgetState extends State<EditProfileSectionWidget> {
  File? image;
  final imagePicker = ImagePicker();
  void pickImage() async {
    final pickedImage = await imagePicker.pickImage(
      source: ImageSource.gallery,
    );
    if (pickedImage != null) {
      setState(() {
        image = File(pickedImage.path);
      });
    } else {
      return ;
    }
  }

  

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 65,
          width: 65,
          child: CircleAvatar(
            radius: 30,
            child: image == null
                ? Image.asset('assets/images/profile.png')
                : ClipRRect(
                    borderRadius: BorderRadius.circular(360),
                    child: Image.file(
                      image!,
                      width: 30,
                      height: 30,
                    ),
                  ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'abdelrahman ibrahem',
              style: AppTextStyle.onBoardingSubTitleStyle().copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              'zeid4643@gmail.com',
              style: AppTextStyle.onBoardingSubTitleStyle().copyWith(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColor.darkGrey,
              ),
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed:(){
            pickImage();
          },
          icon: const Icon(
            Icons.edit,
          ),
        ),
      ],
    );
  }
}
