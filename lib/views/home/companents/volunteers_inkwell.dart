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
          child: Ink(
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
        ),
      ),
    );
  }
}
