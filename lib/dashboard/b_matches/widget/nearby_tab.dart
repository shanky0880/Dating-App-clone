import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Nearbytab extends StatelessWidget {
  const Nearbytab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 3,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 0,
            mainAxisSpacing: 0,
            mainAxisExtent: 250,
            childAspectRatio: 1),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Stack(
              children: [
                Container(
                  // height: 250.h,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      image: const DecorationImage(
                          image:
                              AssetImage('assets/images/matches/girlphoto.jpg'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(12)),
                ),
                Positioned(
                    left: 10,
                    top: 7,
                    child: Container(
                        height: 20,
                        width: 50,
                        decoration: BoxDecoration(
                            color: const Color(0xff59D6D6),
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          children: const [
                            SizedBox(
                              width: 4,
                            ),
                            Icon(
                              MdiIcons.mapMarker,
                              size: 10,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text(
                              '20 Km',
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ))),
                const Positioned(
                    top: 133,
                    left: 10,
                    child: Text(
                      'Angel priya , 26',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                Positioned(
                    top: 153,
                    left: 10,
                    child: Row(
                      children: const [
                        Icon(
                          MdiIcons.school,
                          color: Colors.white,
                          size: 10,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Lucknow University',
                          style: TextStyle(fontSize: 8, color: Colors.white),
                        ),
                      ],
                    )),
                Positioned(
                    top: 173,
                    left: 10,
                    child: Row(
                      children: const [
                        Icon(
                          MdiIcons.briefcase,
                          color: Colors.white,
                          size: 10,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'UI/Ux designer',
                          style: TextStyle(fontSize: 8, color: Colors.white),
                        ),
                      ],
                    )),
                Positioned(
                    top: 193,
                    left: 10,
                    child: Row(
                      children: const [
                        Icon(
                          MdiIcons.starCircle,
                          color: Colors.white,
                          size: 10,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'xyz ',
                          style: TextStyle(fontSize: 8, color: Colors.white),
                        ),
                      ],
                    )),
                const Positioned(
                  top: 213,
                  left: 10,
                  child: Text(
                    'Live in Lucknow Uttar Pradesh ',
                    style: TextStyle(fontSize: 8, color: Colors.white),
                  ),
                ),
                const Positioned(
                  top: 150,
                  right: 10,
                  child: CircleAvatar(
                    backgroundColor: Color(0xff59D6D6),
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }
}
