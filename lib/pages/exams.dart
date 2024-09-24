import 'package:flutter/material.dart';

class Exams extends StatelessWidget {
  const Exams({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(247, 121, 134, 203),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacementNamed(
                context, '/'); // Navigate back to MainApp
          },
          color: Colors.white,
        ),
        title: const Text(
          'Exams',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/rithadric.jpg'),
              radius: 18,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const SizedBox(height: 20),
            Container(
              width: 320,
              height: 280,
              decoration: BoxDecoration(
                color: const Color.fromARGB(247, 121, 134, 203),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'University Exams',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'NP & IP',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        'January 10, 2022 \n Class 30',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: 150,
                        margin: const EdgeInsets.only(left: 7, top: 30),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 255, 255, 255),
                            padding: const EdgeInsets.symmetric(vertical: 2),
                          ),
                          child: const Text(
                            'Sign up',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/university_concept.jpg',
                        width: 140,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 22),

            // Second Box
            Container(
              width: 320,
              height: 280,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 187, 0),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          'High School Exams',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'NP & IP',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        'Fabbruary 2, 2022 \n Class 40',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                        // textAlign: TextAlign.center,
                      ),
                      Container(
                        width: 150,
                        margin: const EdgeInsets.only(left: 2, top: 30),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 255, 255, 255),
                            padding: const EdgeInsets.symmetric(vertical: 2),
                          ),
                          child: const Text(
                            'Sign up',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 3,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/highschool_concept.jpg',
                        width: 140,
                        height: 180,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 22),
            SizedBox(
              width: 320,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/exams');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(247, 121, 134, 203),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                child: const Text(
                  'Sign up for another exam',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Exams(),
  ));
}
