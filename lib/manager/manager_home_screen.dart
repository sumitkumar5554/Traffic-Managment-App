import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:trafic_rush/manager/company_info.dart';
import 'package:trafic_rush/manager/identification_doc.dart';
import 'package:trafic_rush/manager/profile_picture.dart';
import 'package:trafic_rush/manager/role_specific.dart';
import 'package:trafic_rush/manager/terms_conditions.dart';
import 'package:trafic_rush/manager/vehicle_details.dart';

class ManagerHomePage extends StatefulWidget {
  const ManagerHomePage({Key? key}) : super(key: key);

  @override
  _ManagerHomePageState createState() => _ManagerHomePageState();
}

class _ManagerHomePageState extends State<ManagerHomePage> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    ManagerHomePage(),
    CompanyInfoPage(),
    ProfilePicturePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Manager Home',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 300, // Adjust the height as needed
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.9,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 5),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  pauseAutoPlayOnTouch: true,
                  enlargeCenterPage: true,
                ),
                items: [
                  // Add your carousel items here
                  Image.asset('images/rush1.jpg', fit: BoxFit.cover),
                  Image.asset('images/rush2.jpg', fit: BoxFit.cover),
                  Image.asset('images/rush3.jpg', fit: BoxFit.cover),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                'Quick Actions',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: GridView.count(
                crossAxisCount: 3, // Number of columns in the grid
                crossAxisSpacing: 15, // Spacing between columns
                mainAxisSpacing: 15, // Spacing between rows
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  FunctionContainer(
                    icon: Icons.business,
                    label: 'Company Info',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CompanyInfoPage(),
                        ),
                      );
                    },
                  ),
                  FunctionContainer(
                    icon: Icons.info,
                    label: 'Role Specific Details',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RoleSpecificPage(),
                        ),
                      );
                    },
                  ),
                  FunctionContainer(
                    icon: Icons.badge,
                    label: 'Identification Documents',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => IdentificationDocPage(),
                        ),
                      );
                    },
                  ),
                  FunctionContainer(
                    icon: Icons.directions_car,
                    label: 'Vehicle Details',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => VehicleDetailsPage(),
                        ),
                      );
                    },
                  ),
                  FunctionContainer(
                    icon: Icons.image,
                    label: 'Profile Picture',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfilePicturePage(),
                        ),
                      );
                    },
                  ),
                  FunctionContainer(
                    icon: Icons.assignment,
                    label: 'Terms & Conditions',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TermsConditionsPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black, // Set background color
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.white,),
            label: 'Home',backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications,color: Colors.white,),
            label: 'Notifications',backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.task_alt_outlined,color: Colors.white,),
            label: 'Task',backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_suggest_rounded,color: Colors.white,),
            label: 'Setting',backgroundColor: Colors.black,
          ),
        ],
      ),
    );
  }
}

class FunctionContainer extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const FunctionContainer({
    Key? key,
    required this.icon,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange.shade400,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 30, color: Colors.black),
              const SizedBox(height: 5),
              Text(
                label,
                style: const TextStyle(fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
