// ignore: file_names
import "package:flutter/material.dart";
import 'package:google_mobile_ads/google_mobile_ads.dart';

class BottomBanner extends StatefulWidget {
  const BottomBanner({super.key});

  @override
  State<BottomBanner> createState() => _BottomBannerState();
}

class _BottomBannerState extends State<BottomBanner> {
// Let's Add Banner Ad in our Application

  BannerAd? bannerAd;
  bool isLoaded = false;
  static const AdRequest request = AdRequest();

// Here I am using flutter 2 so, I have  to add  for null safety

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // we are calling this in didchangeddepen... method because we wanna load ad on app
    // start

    bannerAd = BannerAd(
      size: AdSize.banner,

      adUnitId: 'ca-app-pub-9637796854099334/2380867127',
      request: request,
      // adUnitId: 'ca-app-pub-3940256099942544/6300978111',
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() {
            isLoaded = true;
          });

          print("Banner Ad Loaded");
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();

          print('ad failed to load ${error.message}');
        },
      ),
      // request: AdRequest(),
    );

    bannerAd!.load(); // Again I am adding ! due to null safety
  }

  @override
  void initState() {
    didChangeDependencies();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            child: isLoaded
                ? SizedBox(
                    height:50, // Give Height to container otherwise it will give error on GUI
                    width: MediaQuery.of(context).size.width,
                    child: AdWidget(ad: bannerAd!),
                  )
                : const SizedBox(
                    height: 50,
                  )),
      ],
    );
  }
}
