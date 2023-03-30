import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:solution_challenge_project/export.dart';
import 'package:solution_challenge_project/views/companents/arrow_left.dart';

class ChoosePhoto extends StatefulWidget {
  const ChoosePhoto({super.key});

  @override
  State<ChoosePhoto> createState() => _ChoosePhotoState();
}

class _ChoosePhotoState extends State<ChoosePhoto> {
  late File? _chooseFile = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50.h),
            ArrowLeft(),
            SizedBox(height: 50.h),
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.r),
                    ),
                    child: Container(
                      width: 350.w,
                      height: 200.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.r),
                        color: AppConstants.fillColorText,
                      ),
                      child: _chooseFile == null
                          ? Center(
                              child: Text(
                                "Post",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                ),
                              ),
                            )
                          : Image.file(
                              _chooseFile!,
                              fit: BoxFit.cover,
                            ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Padding(
                    padding: EdgeInsets.only(left: 20.w, right: 20.w),
                    child: TextField(
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      maxLength: 200,
                      maxLines: 3,
                      decoration: InputDecoration(
                        labelText: 'Donate Info',
                        hintText: 'Info',
                        hintStyle: TextStyle(
                          color: AppConstants.mainBlack,
                          fontSize: 16.sp,
                        ),
                        prefixIcon: const Icon(Icons.comment),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(25.r),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  SizedBox(
                    height: 58.h,
                    width: 300.w,
                    child: ElevatedButton(
                      onPressed: () {
                        _chooseFotoSee(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppConstants.mainBlue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.r),
                        ),
                      ),
                      child: Text(
                        "Fotoğraf Seç",
                        style: TextStyle(fontSize: 18.sp),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 150.h, left: 250.w),
                    child: SizedBox(
                      height: 40.h,
                      width: 100.w,
                      child: ElevatedButton(
                        onPressed: () {
                          Get.toNamed(NavigationConstants.viewAllCampaigns);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppConstants.mainBlue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                        ),
                        child: Text(
                          "Submit",
                          style: TextStyle(fontSize: 18.sp),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _chooseFotoSee(BuildContext context) {
    Get.defaultDialog(
      radius: 10.r,
      title: "Lütfen Seçim Yapınız",
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: Center(
              child: Text(
                "Galeriden Fotoğraf Seç",
                style: TextStyle(fontSize: 18.sp),
              ),
            ),
            onTap: () {
              _chooseLoad(ImageSource.gallery);
            },
          ),
        ],
      ),
    );
  }

  void _chooseLoad(ImageSource source) async {
    final picker = ImagePicker();
    final choose = await picker.pickImage(source: source);
    setState(() {
      if (choose != null) {
        _chooseFile = File(choose.path);
      }
    });
    Get.back();
  }
}