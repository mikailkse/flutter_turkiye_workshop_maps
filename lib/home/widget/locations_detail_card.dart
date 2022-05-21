import 'package:flutter/material.dart';

class LocationDetailCard extends StatelessWidget {
  final String? name;
  final String? description;
  final String? photoUrl;

  const LocationDetailCard({
    Key? key,
    this.name,
    this.description,
    this.photoUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text(
                name.toString(),
                style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: Colors.black, fontWeight: FontWeight.w500),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.45,
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Text(
                      description.toString(),
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          color: Colors.white, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              )
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: NetworkImage(
                  photoUrl.toString(),
                ),
                fit: BoxFit.fill,
              ),
            ),
          )
        ],
      ),
    );
  }
}
