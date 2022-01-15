import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import '../routing/router.gr.dart';

class PetsListPage extends StatefulWidget {
  const PetsListPage({Key? key, required this.userId,}) : super(key: key);
  final String userId;
  @override
  _PetsListState createState() => _PetsListState();
}

class _PetsListState extends State<PetsListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Pets Details", style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w700,
                fontSize: 24,
              ),),
              SizedBox(
                height: 20
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: InkWell(
                        onTap: () {
                          context.pushRoute(PetDetailsRoute(petsId: '90877'));
                        },
                        child: Card(
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                      image: NetworkImage("https://source.unsplash.com/random?pet"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                    height: 20
                                ),
                                Text("Puppy", style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: Colors.black87,
                                )),
                                SizedBox(
                                  height: 10
                                ),
                              ]
                            ),
                          ),
                        ),
                      ),
                    );
                  }
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}
