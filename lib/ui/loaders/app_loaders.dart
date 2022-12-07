import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:news_app/generated/l10n.dart';
import 'package:shimmer/shimmer.dart';

abstract class AppLoaders {
  static Shimmer appTitle = Shimmer.fromColors(
    baseColor: Colors.white,
    highlightColor: Colors.grey,
    child: Text(
      S.current.title,
      style: const TextStyle(
        fontSize: 24,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
    ),
  );

  static CarouselSlider homeSliderLoader = CarouselSlider.builder(
    itemCount: 10,
    itemBuilder: (context, index, realIndex) => Stack(
      children: [
        Shimmer.fromColors(
          baseColor: Colors.white,
          highlightColor: Colors.grey,
          child: Container(
            width: 320,
            height: 220,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Colors.grey.shade300,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16),
          width: 320,
          height: 220,
          decoration: BoxDecoration(
            color: Colors.black45,
            borderRadius: BorderRadius.circular(24),
          ),
          alignment: Alignment.bottomLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 12,
                color: Colors.grey.shade400,
              ),
              const SizedBox(height: 12),
              Container(
                height: 12,
                color: Colors.grey.shade400,
              ),
            ],
          ),
        ),
      ],
    ),
    options: CarouselOptions(
      height: 220,
      viewportFraction: 0.75,
      autoPlay: true,
      enlargeCenterPage: true,
      autoPlayInterval: const Duration(seconds: 10),
    ),
  );

  static Shimmer allNewItemLoader = Shimmer.fromColors(
    baseColor: Colors.grey.shade100,
    highlightColor: Colors.grey,
    child: Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: const BorderRadius.all(
                Radius.circular(16),
              ),
            ),
          ),
          const SizedBox(height: 12),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) => Container(
              height: 12,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            separatorBuilder: (context, index) => const SizedBox(height: 12),
            itemCount: 3,
          ),
        ],
      ),
    ),
  );
}
