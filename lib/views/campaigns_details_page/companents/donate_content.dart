import 'package:solution_challenge_project/export.dart';

class DonateContent extends StatelessWidget {
  const DonateContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      height: 450.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
        color: AppConstants.mainWhite,
      ),
      child: Padding(
        padding: EdgeInsets.only(top: 150.h, left: 15.w, right: 15.w),
        child: Text(
          "Kolera genellikle bakterinin bulaşmış olduğu deniz ürünleri, yiyecekler ve içme suyu ile vücuda bulaşır. Kalabalık ortamlarda yaşayan savaş, yoksulluk ve temizliğe dikkat edilmeyen topluluklarda kolayca yayılıp ölümlere yol açabilmektedir."
          "Dünya Sağlık Örgütü, her yıl 1, 3 milyon ila 4 milyon vaka olduğunu bildiriyor. . Genel olarak Afrika, Güney Asya ve Latin Amerika'nın bazı eyaletlerinde görülmektedir. "
          "Hastalığın tedavisinde serum ve çeşitli antibiyotikler kullanılmaktadır.",
          style: TextStyle(
            fontSize: 12.sp,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
