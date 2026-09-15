import 'package:flutter/material.dart';
import 'package:my_app_name/config/cstuomerimage/img_helper.dart';
import 'package:my_app_name/features/home/widget/fitler_chip.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_app_name/features/home/widget/product_card.dart';
import 'package:my_app_name/features/home/widget/title.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final List<String> bannerTitles = [
    'Banner title 1',
    'Banner title 1',
    'Banner title 1',
  ];
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        centerTitle: false,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundColor: Colors.orange.shade100,
              radius: 25.0,
              child: Icon(Icons.person, color: Colors.orangeAccent, size: 32.0),
            ),
            SizedBox(width: 12.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Rebaz Rasull Abaas',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    'rebzrasull@gmail.com',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.grey, fontSize: 14.0),
                  ),
                  SizedBox(height: 4.0),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  decoration: BoxDecoration(color: Colors.amber),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        filled: true,
                        fillColor: Colors.grey.shade100,
                        contentPadding: EdgeInsets.symmetric(vertical: 0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                width: double.infinity,
                height: deviceHeight * 0.05,
                color: Colors.blue,
                child: Fitlerchip(),
              ),
              SizedBox(height: 10.0),
              Container(
                width: double.infinity,
                color: Colors.amber,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CarouselSlider.builder(
                          itemCount: bannerTitles.length,
                          itemBuilder: (context, index, realInedx) {
                            return Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Container(
                                padding: EdgeInsets.all(16.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16.0),
                                  color: Colors.grey.shade100,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        bannerTitles[index],
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          options: CarouselOptions(
                            height: deviceHeight * 0.2,
                            viewportFraction: 1.0,
                            autoPlay: true,
                            onPageChanged: (index, reason) {
                              setState(() => activeIndex = index);
                            },
                          ),
                        ),
                        Positioned(
                          bottom: 12.0,
                          child: AnimatedSmoothIndicator(
                            activeIndex: activeIndex,
                            count: bannerTitles.length,
                            effect: ColorTransitionEffect(
                              dotWidth: 8.0,
                              dotHeight: 8.0,
                              activeDotColor: Colors.black87,
                              dotColor: Colors.black26,
                              spacing: 6.0,
                            ),
                          ),
                        ),
                        // Center(child: Image.asset('ssets/mages/ectangle 139.png')),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.0),
              // getSvgImage(height: 50, asset: CustomIcons_images.barger),
            //  Image.asset('assets/images/zalata.png'),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 12.0),
                color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Title',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17.0,
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Icon(Icons.chevron_right, size: 24),
                      
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: deviceHeight * 0.112,
                color: Colors.amber,
                padding: EdgeInsets.symmetric(vertical: 6.0),
                child: TitleS(),
              ),
              SizedBox(height: 12),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 12.0),
                color: Colors.blue,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Title',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Icon(Icons.chevron_right, size: 24.0),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: deviceHeight * 0.27,
                color: Colors.amber,
                child: Productcard(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
