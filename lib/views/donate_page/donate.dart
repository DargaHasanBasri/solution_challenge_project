import 'package:solution_challenge_project/export.dart';
import 'package:solution_challenge_project/views/companents/arrow_left.dart';
import 'package:solution_challenge_project/views/donate_page/companents/campaigns_poster.dart';
import 'package:solution_challenge_project/views/donate_page/companents/donate_amount.dart';

class DonatePage extends StatefulWidget {
  const DonatePage({super.key});

  @override
  State<DonatePage> createState() => _DonatePageState();
}

class _DonatePageState extends State<DonatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: const [
          Flexible(
            flex: 1,
            child: DonateAmount(),
          ),
          Flexible(
            flex: 0,
            child: CampaignPoster(),
          ),
        ],
      ),
    );
  }
}
