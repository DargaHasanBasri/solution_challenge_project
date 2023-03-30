import 'package:solution_challenge_project/export.dart';

class VolunteersInkwell extends StatelessWidget {
  final String imageAdress;
  const VolunteersInkwell({
    super.key,
    required this.imageAdress,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.r),
      child: Material(
        child: InkWell(
          onTap: () {},
          child: Stack(
            children: [
              Ink(
                width: 100.w,
                height: 150.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Image.asset(
                  imageAdress,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 120.h, left: 45.w),
                child: Container(
                  height: 25.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    color: AppConstants.mainBlue,
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  child: Center(
                    child: Text(
                      "See",
                      style: TextStyle(
                        fontFamily: FontConstants.openSansMedium,
                        fontSize: 12.sp,
                        color: AppConstants.mainWhite,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
