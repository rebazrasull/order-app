import 'package:flutter/material.dart';
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
  final List<String> imgList = [
    'https://png.pngtree.com/thumb_back/fh260/background/20250417/pngtree-cheesy-pizza-slice-being-lifted-from-freshly-baked-pie-showcasing-gooey-image_17203271.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScLBV33nDQFB1Ngnn3237LwLtbqocCqTjY0lX480u1-A&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaX0Q1OmRTa4svyBoQlVCKzv7aouzzg3Ws0IClT7d_4Q&s=10',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAQhUgtZOR8hU2oVlpEPVO3dk9GxG_N7GQRu60Jz9rMw&s=10'
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
                          itemCount: imgList.length,
                          itemBuilder: (context, index, realInedx) {
                            return Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24.0),
                                  color: Colors.grey.shade100,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: ClipRRect(
                                         borderRadius: BorderRadius.circular(24.0),
                                        child: Image.network( 
                                         imgList[index],
                                          fit: BoxFit.cover,
                                          loadingBuilder: (context, child, loadingProgress) {
                                            if(loadingProgress ==null) return child;
                                             return Center(
                                           child: CircularProgressIndicator(
                                           value: loadingProgress.expectedTotalBytes != null
                                           ? loadingProgress.cumulativeBytesLoaded / 
                                            loadingProgress.expectedTotalBytes!
                                            : null,
                                           ),
                                          );
                                          },
                                          errorBuilder: (context, error, stackTrace) {
                                            return Center(
                                              child: Icon(
                                                Icons.broken_image,
                                                size: 40.0,
                                                color: Colors.grey,
                                                ),
                                            );
                                          },
                                        ),
                                      )
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
                            count: imgList.length,
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
                        'Vegetables',
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
                height: deviceHeight * 0.116,
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
