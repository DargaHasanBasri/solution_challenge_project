import 'package:solution_challenge_project/export.dart';

class PasswordTextFormField extends StatelessWidget {
  final String hintTextTitle;
  const PasswordTextFormField({
    super.key,
    required this.hintTextTitle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.w,
      height: 48.h,
      child: TextFormField(
        obscureText: true,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: hintTextTitle,
          filled: true,
          fillColor: AppConstants.fillColorText,
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
        ),
      ),
    );
  }
}
