import 'package:solution_challenge_project/export.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  width: 375.w,
                  height: 200.h,
                  color: AppConstants.mainOrange,
                ),
                Container(
                  padding:
                      EdgeInsets.only(left: 124.w, top: 117.h, right: 124.w),
                  child: GestureDetector(
                    onTap: () {
                      FocusScope.of(context).unfocus();
                    },
                    child: Stack(
                      children: [
                        Container(
                          width: 130,
                          height: 130,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 4.w, color: AppConstants.mainWhite),
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: AppConstants.mainBlack.withOpacity(0.1),
                              ),
                            ],
                            shape: BoxShape.circle,
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/resim1.png"),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(
                  right: 36.w, left: 36.w, bottom: 20.h, top: 50.h),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.grey.shade300)),
                  labelText: "Username",
                  suffixIcon: const Icon(Icons.person),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 36.w, left: 36.w, bottom: 20.h),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.grey.shade300)),
                  labelText: "E-mail",
                  suffixIcon: const Icon(Icons.mail),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 36.w, left: 36.w, bottom: 20.h),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.grey.shade300)),
                  labelText: "Phone Number",
                  suffixIcon: const Icon(Icons.phone),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 36.w, left: 36.w, bottom: 15.h),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.grey.shade300)),
                  labelText: "Password",
                  suffixIcon: const Icon(Icons.password_rounded),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h, left: 37.w),
              child: const ActionButton(buttonTitle: "Update"),
            ),
          ],
        ),
      ),
    );
  }
}
