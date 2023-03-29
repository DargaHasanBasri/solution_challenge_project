import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:solution_challenge_project/export.dart';

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 150.h),
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
                        ? const Text("Fotoğraf")
                        : Image.file(
                            _chooseFile!,
                            fit: BoxFit.cover,
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
              ],
            ),
          ),
        ],
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
          ListTile(
            title: Center(
              child: Text(
                "Kameradan Fotoğraf Çek",
                style: TextStyle(fontSize: 18.sp),
              ),
            ),
            onTap: () {
              _chooseLoad(ImageSource.camera);
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
