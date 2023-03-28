import 'package:solution_challenge_project/export.dart';

class DividerBuild extends StatelessWidget {
  const DividerBuild({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: AppConstants.mainBlack,
      height: 0,
      thickness: 0.5,
    );
  }
}
