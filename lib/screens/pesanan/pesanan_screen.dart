import 'package:flutter/material.dart';
import 'package:gojek_home_screen/theme.dart';

class PesananScreen extends StatelessWidget {
  const PesananScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: DefaultTabController(
          length: 2,
          initialIndex: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TabBar(
                isScrollable: true,
                labelStyle: titleTextStyle,
                unselectedLabelStyle: titleTextStyle,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black38,
                indicatorColor: primaryColor,
                indicatorWeight: 2.5,
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(
                    child: Text(
                      'Riwayat',
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Dalam proses',
                    ),
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 220,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/promo_banner_4.jpg'),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 8,
                                    offset: Offset(1, 1),
                                    color: Colors.red.shade900,
                                  )
                                ]),
                          ),
                          Text(
                            'LOREM IPSUM!',
                            style: pesananTitleTextStyle,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'kami akan dengan senang hati membantumu.',
                            style: pesananSubtitleTextStyle,
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 220,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/promo_banner_4.jpg'),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 5,
                                    offset: Offset(0, 1),
                                    color: Colors.red.shade900,
                                  )
                                ]),
                          ),
                          Text(
                            'LOREM IPSUM!',
                            style: pesananTitleTextStyle,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'kami akan dengan senang hati membantumu.',
                            style: pesananSubtitleTextStyle,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
