import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top, left: 25, right: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Howdy, what are you\nlooking for 👀',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                child: SvgPicture.asset(
                  'assets/icons/cart.svg',
                ),
                width: 20,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                hintText: 'Search For Products',
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: SvgPicture.asset(
                    'assets/icons/search.svg',
                    width: 10,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
