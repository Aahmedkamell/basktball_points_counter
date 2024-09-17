import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  void addOnePoint() {
    print('add one point');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Points Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Team A',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      ' $teamAPoints',
                      style: TextStyle(
                        fontSize: 150,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoints++;
                        });
                      },
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoints += 2;
                        });
                      },
                      child: Text(
                        'Add 2 Point',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          teamAPoints += 3;
                        });
                      },
                      child: Text(
                        'Add 3 Point',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 450,
                  child: VerticalDivider(
                    color: const Color(0xFF999999),
                    thickness: 0.5,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      'Team B',
                      style: TextStyle(
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      ' $teamBPoints',
                      style: TextStyle(
                        fontSize: 150,
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoints++;
                        });
                      },
                      child: Text(
                        'Add 1 Point',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoints += 2;
                        });
                      },
                      child: Text(
                        'Add 2 Point',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(150, 50),
                        backgroundColor: Colors.orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          teamBPoints += 3;
                        });
                      },
                      child: Text(
                        'Add 3 Point',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(150, 50),
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onPressed: () {
                setState(() {
                  teamAPoints = 0;
                  teamBPoints = 0;
                });
              },
              child: Text(
                'Reset',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
