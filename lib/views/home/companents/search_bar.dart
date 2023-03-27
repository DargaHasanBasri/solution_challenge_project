import 'package:solution_challenge_project/export.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      child: SizedBox(
        width: 330.w,
        height: 48.h,
        child: TextFormField(
          decoration: const InputDecoration(
            suffixIcon: Icon(Icons.search),
            hintText: "Search here..",
            filled: true,
            fillColor: AppConstants.mainWhite,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(
                Radius.circular(25),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
