import 'package:flutter_projects/Tic_Tac_Toe.dart';
import 'package:flutter_projects/bmi_calc.dart';
import 'package:flutter_projects/calc.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

int currentpage = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade100,
      drawer: Drawer(
        backgroundColor: Colors.purple.shade200,
        child: ListView(
          children: [
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.indigo.shade200),
                child: const Text(
                  "components:",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                )),
            ListTile(
              leading: const Icon(
                Icons.home_rounded,
                color: Colors.white,
              ),
              title: const Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                setState(() {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ));
                });
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.calculate,
                color: Colors.white,
              ),
              title: const Text(
                "Caluclator project.",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                setState(() {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: ((context) => const Calc())));
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.architecture_rounded),
              title: const Text("BMI Calculator",
                  style: TextStyle(color: Colors.yellow),
                  textAlign: TextAlign.center),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
              onTap: () {
                setState(() {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => const BmiCalculator())));
                });
              },
            ),
            ListTile(
              leading: const Icon(Icons.architecture_rounded),
              title: const Text("tictactoe",
                  style: TextStyle(color: Colors.yellow),
                  textAlign: TextAlign.center),
              trailing: const Icon(Icons.arrow_forward_ios_rounded),
              onTap: () {
                setState(() {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => const TicTacToe())));
                });
              },
            )
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text("flutter test zone!"),
            floating: true,
            expandedHeight: 200,
            backgroundColor: Colors.deepPurpleAccent,
            flexibleSpace: FlexibleSpaceBar(
                background: Container(
              color: Colors.blueGrey.shade300,
            )),
            centerTitle: true,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.deepPurple.shade200,
                  height: 400,
                  width: 50,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.deepPurple.shade200,
                  height: 400,
                  width: 50,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.deepPurple.shade200,
                  height: 400,
                  width: 50,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
