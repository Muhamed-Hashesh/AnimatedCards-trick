import 'package:carddss/widgets/card.dart';
import 'package:flutter/material.dart';

class MainScaff extends StatelessWidget {
  const MainScaff({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF111111),
      body: Center(
        child: Container(
          child: ListView(
            padding: const EdgeInsets.all(50),
            scrollDirection: Axis.horizontal,
            children: const [
              CustomCard(
                color: Color(0xFFe9a643),
                imagePath: 'assets/images/old.jpg',
                image3dPath: 'assets/images/old3d.png',
                title: 'Barbarians',
              ),
              SizedBox(width: 50),
              CustomCard(
                color: Color(0xFFad4a9d),
                imagePath: 'assets/images/archer.jpg',
                image3dPath: 'assets/images/archer3d.png',
                title: 'Archers',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
