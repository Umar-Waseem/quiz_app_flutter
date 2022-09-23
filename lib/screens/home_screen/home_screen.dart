import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app_flutter/helpers/ad_mob_servce.dart';
import 'package:quiz_app_flutter/themes/custom_text_theme.dart';
import '../../providers/quiz_provider.dart';
import 'home_screen_widgets/profile_image_widget.dart';
import 'home_screen_widgets/username_and_greeting_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.name}) : super(key: key);

  final String name;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();

    AdMobService.createBannerAd();
    AdMobService.createInterstitialAd();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => AdMobService.showInterstitialAd(),
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: AdMobService.banner == null
            ? const Text("Ad Not Loaded")
            : SizedBox(
                height: 50,
                child: AdWidget(ad: AdMobService.banner!),
              ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    UserNameAndGreeting(name: widget.name),
                    const ProfileImage(),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Text(
                      "Select a category",
                      style: customTextThemes.headline2,
                    ),
                    const SizedBox(width: 10),
                    // expanded widget to take all the space available making it resposive
                    Expanded(child: Container(height: 1, color: Colors.grey)),
                  ],
                ),
                const SizedBox(height: 20),
                // staggered grid view to make the grid responsive
                Consumer<QuizProvider>(
                  builder: (context, data, child) => SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5,
                      ),
                      itemCount: data.getQuizCards.length,
                      itemBuilder: (context, index) {
                        return data.getQuizCards[index];
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
