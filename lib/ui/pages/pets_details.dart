
import 'package:flutter/material.dart';

class PetDetailsPage extends StatefulWidget {
  const PetDetailsPage({Key? key, required this.petsId}) : super(key: key);

  final String petsId;

  @override
  _PetDetailsState createState() => _PetDetailsState();
}

class _PetDetailsState extends State<PetDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 100,
              margin: const EdgeInsets.only(bottom: 10),
              width: MediaQuery.of(context).size.width - 24,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: NetworkImage("https://source.unsplash.com/random?dog"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text("Name"),
            Text(
              "Koppa",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.black87,
                fontSize: 21
              ),
            ),
            SizedBox(
              height: 20
            ),
            Text("Location"),
            Text("Kincar Place", style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),),
            SizedBox(height: 10),
            Text("Age"),
            Text("12 Yrs", style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),),
          ]
        ),
      ),
    );
  }
}
