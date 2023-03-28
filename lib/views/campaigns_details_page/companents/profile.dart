import 'package:solution_challenge_project/export.dart';

class Profile extends StatelessWidget {
  final String profileAdress;
  const Profile({
    super.key,
    required this.profileAdress,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20.r,
      backgroundImage: AssetImage(profileAdress),
    );
  }
}
