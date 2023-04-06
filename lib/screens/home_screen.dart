import 'package:booking_app/screens/hotel_screen.dart';
import 'package:booking_app/screens/ticket_view.dart';
import 'package:booking_app/utils/app_info_list.dart';
import 'package:booking_app/utils/app_styles.dart';
import 'package:booking_app/widgets/double_text.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Good Morning', style: Styles.headLineStyle3),
                        const SizedBox(height: 5),
                        Text('Book Tickets', style: Styles.headLineStyle1),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/logo.jpg'),
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 25),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_filled,
                        color: Color(0xFFBFC205),
                      ),
                      Text(
                        'Search',
                        style: Styles.headLineStyle4,
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                const DoubleWidget(
                    bigText: 'Upcoming Flights', smallText: 'View All'),
              ],
            ),
          ),
          const SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
                children: ticketList.map((e) => TicketView(ticket: e)).toList()
                // children: const [
                //   TicketView(),
                //   TicketView(),
                //   TicketView(),
                // ],
                ),
          ),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const DoubleWidget(bigText: 'Hotel', smallText: 'View All'),
          ),
          const SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
                children: hotelList.map((e) => HotelScreen(hotel: e)).toList()
                // children: const [
                //   HotelScreen(),
                //   HotelScreen(),
                //   HotelScreen(),
                // ],
                ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
