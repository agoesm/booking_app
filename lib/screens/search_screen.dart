import 'package:booking_app/utils/app_layout.dart';
import 'package:booking_app/utils/app_styles.dart';
import 'package:booking_app/widgets/double_text.dart';
import 'package:booking_app/widgets/icon_text.dart';
import 'package:booking_app/widgets/ticket_tab.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final size = AppLayout.getSize(context);

    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.all(AppLayout.getHeight(20)),
        children: [
          SizedBox(height: AppLayout.getHeight(40)),
          Text(
            'What are\nyou looking for?',
            style: Styles.headLineStyle1
                .copyWith(fontSize: AppLayout.getWidth(35)),
          ),
          SizedBox(height: AppLayout.getHeight(20)),
          const TicketTab(firstTab: 'Airline Tickets', secondTab: 'Hotels'),
          SizedBox(height: AppLayout.getHeight(25)),
          // const IconText(icon: Icons.flight_takeoff_rounded, text: 'Departure'),
          // SizedBox(height: AppLayout.getHeight(20)),
          // const IconText(icon: Icons.flight_land_rounded, text: 'Arrival'),
          Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const IconText(
                    icon: Icons.flight_takeoff_rounded, text: 'Departure'),
                SizedBox(height: AppLayout.getHeight(20)),
                const IconText(
                    icon: Icons.flight_land_rounded, text: 'Arrival'),
                SizedBox(height: AppLayout.getHeight(20)),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xD91130CE),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: const Size.fromHeight(50),
                    padding:
                        EdgeInsets.symmetric(vertical: AppLayout.getHeight(13)),
                  ),
                  child:
                      const Text('Find Ticket', style: TextStyle(fontSize: 17)),
                ),
              ],
            ),
          ),
          SizedBox(height: AppLayout.getHeight(40)),
          const DoubleWidget(
              bigText: 'Upcoming Flights', smallText: 'View All'),
          SizedBox(height: AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(400),
                width: size.width * 0.42,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(20)),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 1,
                          spreadRadius: 1,
                          color: Colors.grey.shade200)
                    ]),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(12)),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/hotel1.jpg'),
                        ),
                      ),
                    ),
                    SizedBox(height: AppLayout.getHeight(12)),
                    Text(
                      "20% Discount on the early booking of this flights, Don't miss",
                      style: Styles.headLineStyle2,
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(174),
                        decoration: BoxDecoration(
                          color: const Color(0xFF3AB8B8),
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(18)),
                        ),
                        padding: EdgeInsets.all(AppLayout.getHeight(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Discount\nfor survey',
                              style: Styles.headLineStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            SizedBox(height: AppLayout.getHeight(10)),
                            Text(
                              'Take the survey about our service and get discount',
                              style: Styles.headLineStyle2.copyWith(
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getHeight(30)),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                                width: 18, color: const Color(0xFF189999)),
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: AppLayout.getHeight(15)),
                  Container(
                    width: size.width * 0.44,
                    height: AppLayout.getHeight(210),
                    padding: EdgeInsets.all(AppLayout.getHeight(15)),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEC6545),
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(18)),
                    ),
                    child: Column(
                      children: [
                        Text(
                          'Take love',
                          style: Styles.headLineStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: AppLayout.getHeight(15)),
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                  text: '😍', style: TextStyle(fontSize: 38)),
                              TextSpan(
                                  text: '🥰', style: TextStyle(fontSize: 50)),
                              TextSpan(
                                  text: '😘', style: TextStyle(fontSize: 38)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
