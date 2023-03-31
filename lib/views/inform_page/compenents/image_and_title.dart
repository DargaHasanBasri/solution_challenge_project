import 'package:solution_challenge_project/export.dart';

class ImageAndTitle extends StatelessWidget {
  final String imageAdress;
  final String imageTitle;
  const ImageAndTitle({
    super.key,
    required this.imageAdress,
    required this.imageTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imageAdress, //'assets/images/helping-hand.png'
          width: MediaQuery.of(context).size.width * 0.8,
        ),
        SizedBox(height: 10.h),
        Text(
          imageTitle, //'Sufficient Resources Save Lives'
          style: TextStyle(
            fontFamily: FontConstants.playfairDisplayRegular,
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
