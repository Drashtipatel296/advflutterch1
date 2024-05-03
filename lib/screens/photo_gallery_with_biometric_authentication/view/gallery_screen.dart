import 'package:advflutterch1/screens/photo_gallery_with_biometric_authentication/provider/gallery_provider.dart';
import 'package:advflutterch1/screens/photo_gallery_with_biometric_authentication/view/hide_screen.dart';
import 'package:advflutterch1/utils/gallery_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GalleryApp extends StatelessWidget {
  const GalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        shadowColor: Colors.black38,
        leading: const Icon(Icons.menu),
        title: const Text(
          'Gallery',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
            child: Row(
              children: [
                Container(
                  height: 35,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Albums',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                      Icon(
                        Icons.arrow_drop_down_outlined,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 200,
                ),
                const Icon(Icons.search),
                const SizedBox(
                  width: 10,
                ),
                PopupMenuButton<String>(
                  onSelected: (String value) async {
                    if(value == 'Hide Folder'){
                      if(await Provider.of<GalleryProvider>(context, listen: false).checkFingerprint()){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HideScreen(),),);
                      }
                    }
                  },
                  itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                    const PopupMenuItem<String>(
                      value: 'Edit',
                      child: Text('Edit'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'Setting',
                      child: Text('Setting'),
                    ),
                    const PopupMenuItem<String>(
                      value: 'Hide Folder',
                      child: Text('Hide Folder'),
                    ),
                  ],
                  child: const Icon(Icons.more_vert),
                )
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 3/4,
              ),

              itemBuilder: (context, index) => gridviewImage(
                galleryImage[index]['img'],
                galleryImage[index]['name'],
                galleryImage[index]['num'],
              ),
              itemCount: galleryImage.length,
            ),
          ),
        ],
      ),
    );
  }

  Widget gridviewImage(String img, String name, String num) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 120,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(img),
                ),
              ),
            ),
            Text(
              name,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              num,
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
