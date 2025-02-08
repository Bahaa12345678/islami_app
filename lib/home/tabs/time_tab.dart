import 'package:flutter/material.dart';

class TimeTab extends StatelessWidget {
  const TimeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Container(
                height: 338, // Adjusted height
                decoration: BoxDecoration(
                  border: Border.all(width: 3, color: Color(0xffE2BE7F)),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.transparent,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),

                       SizedBox(height: 16),
                      ToggleButtons(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              '16 Jul, 2024',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              ' Pray time \n Tuesday',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              '09 muh,1446',
                              style: TextStyle(
                                color: Color(0xffFFFFFF),
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ],
                        onPressed: (int index) {
                          // Handle button selection
                        },
                        isSelected: [true, false, false], // Initial selection state
                        selectedColor: Colors.black,
                        color: Color(0xffE2BE7F),
                        fillColor: Color(0xffE2BE7F),
                        borderColor: Color(0xffE2BE7F),
                        selectedBorderColor: Color(0xffE2BE7F),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      const Spacer(),
                      SizedBox(
                        height: 120,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            PrayerTimeStack('Dhuhr', '01:01 PM'),
                            const SizedBox(width: 10),
                            PrayerTimeStack('Asr', '04:38 PM'),
                            const SizedBox(width: 10),
                            PrayerTimeStack('Maghrib', '07:57 PM'),
                            const SizedBox(width: 10),
                            PrayerTimeStack('Isha', '09:00 PM'),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Next Prayer: 02:32',
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 259,
                    width: (MediaQuery.of(context).size.width - 60) / 2,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffE2BE7F), width: 2),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Evening Azkar',
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 18,
                            ),
                          ),
                          Container(
                            height: 185,
                            width: 290,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                    AssetImage('assets/images/azkar.png')
                                )
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 259,
                    width: (MediaQuery.of(context).size.width - 60) /
                        2, // Responsive width
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xffE2BE7F), width: 2),
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.transparent,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Morning azkar',
                            style: TextStyle(
                              color: Color(0xffFFFFFF),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            height: 185,
                            width: 290,
                            child:
                            DecoratedBox(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/Illustration.png'
                                        )
                                    )
                                )
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget PrayerTimeStack(String prayerName, String prayerTime) {
    return Container(
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromRGBO(70, 70, 70, 120),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                prayerName,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                prayerTime,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}