import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdMobService {
  static String? get bannerAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-3940256099942544/6300978111";
    } else if (Platform.isIOS) {
      return "ca-app-pub-3940256099942544/2934735716";
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }

  static String? get interstitialAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-3940256099942544/1033173712";
    } else if (Platform.isIOS) {
      return "ca-app-pub-3940256099942544/4411468910";
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }

  static String? get rewardedAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-3940256099942544/5224354917";
    } else if (Platform.isIOS) {
      return "ca-app-pub-3940256099942544/1712485313";
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }

  static String? get nativeAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-3940256099942544/2247696110";
    } else if (Platform.isIOS) {
      return "ca-app-pub-3940256099942544/3986624511";
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }

  static final BannerAdListener bannerListener = BannerAdListener(
    onAdLoaded: (Ad ad) => debugPrint('Ad loaded.'),
    onAdFailedToLoad: (Ad ad, LoadAdError error) {
      ad.dispose();
      debugPrint('Ad failed to load: $error');
    },
    onAdOpened: (Ad ad) => debugPrint('Ad opened.'),
    onAdClosed: (Ad ad) => debugPrint('Ad closed.'),
    // onApplicationExit: (Ad ad) => debugPrint('Left application.'),
  );

  static BannerAd? banner;
  static InterstitialAd? interstitialAd;

  static void createBannerAd() {
    banner = BannerAd(
      adUnitId: AdMobService.bannerAdUnitId!,
      size: AdSize.fullBanner,
      request: const AdRequest(),
      listener: AdMobService.bannerListener,
    )..load();
  }

  static void createInterstitialAd() {
    log("inside create");
    InterstitialAd.load(
      adUnitId: AdMobService.interstitialAdUnitId!,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          log('InterstitialAd loaded.');
          interstitialAd = ad;
        },
        onAdFailedToLoad: (error) {
          log('InterstitialAd failed to load: $error');
        },
      ),
    );
  }

  static void showInterstitialAd() {
    log('inside show');

    if (interstitialAd != null) {
      log("interstitial ad is not null");
      interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
        onAdDismissedFullScreenContent: (ad) {
          ad.dispose();
          createInterstitialAd();
        },
        onAdFailedToShowFullScreenContent: (ad, error) {
          log('$ad onAdFailedToShowFullScreenContent: $error');
          ad.dispose();
          createInterstitialAd();
        },
      );
      interstitialAd!.show();
      interstitialAd = null;
    }
  }
}
