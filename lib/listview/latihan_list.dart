import 'package:flutter/material.dart';

class ListItem {
  final String imageUrl; // Tambahkan properti gambar
  final String text;

  ListItem(this.imageUrl, this.text);
}

class latihanList extends StatelessWidget {
  latihanList({super.key});

  final List<ListItem> itemList = [
    ListItem(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8nK6MvW1jT760MNqBmlMdmEUXdClx8kOKkVSM0trgBQdr0Z2DI1TlkFvPrwzVf_5UCUA&usqp=CAU",
        "Partai Banteng"),
    ListItem(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdhtRWmxAd1EV1cIH2fdWFu4kOOu6iNsFy3rgOV6krpub0oPNDXcVPfkI_9ByQzc-iFiI&usqp=CAU",
        "Partai Banteng"),
        ListItem(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdhtRWmxAd1EV1cIH2fdWFu4kOOu6iNsFy3rgOV6krpub0oPNDXcVPfkI_9ByQzc-iFiI&usqp=CAU",
        "Partai Banteng"),
        ListItem(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdhtRWmxAd1EV1cIH2fdWFu4kOOu6iNsFy3rgOV6krpub0oPNDXcVPfkI_9ByQzc-iFiI&usqp=CAU",
        "Partai Banteng"),
        ListItem(
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdhtRWmxAd1EV1cIH2fdWFu4kOOu6iNsFy3rgOV6krpub0oPNDXcVPfkI_9ByQzc-iFiI&usqp=CAU",
        "Partai Banteng"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Container(
                 width: double.infinity,
                height: 140,
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage("https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/65/2023/10/31/Resize_20231031_224158_8047-537819483.jpg"),
          fit: BoxFit.cover
      ),
          ),
              ),
              Column(
                children: [
                  Container(
                    width: 500,
                    height: 300,
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                    ),
                    child: ListView.separated(
                    scrollDirection: Axis.vertical,
                    itemCount: itemList.length,
                    separatorBuilder: (context, index) {
                    return Divider(
                    color: Colors.yellow,
            );
          },
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              height: 100,
              width: 200,
              child: Row(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(itemList[index].imageUrl)
                      )
                    ),
                  ),
                 Row(
                  children: [
                    Container(
                      width: 200,
                      child: Text(itemList[index].text),
                    )
                  ],
                 )
                ],
              ),
            );
          }
          ),
                  )
                ],
              ),
               Column(
                children: [
                  Text("Galery"),
                  Container(
                    width: 500,
                    height: 150,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: itemList.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.all(8),
                            child: Row(
                              children: [
                                Container(
                                  width: 100,
                                  child: Image.network(
                                    itemList[index].imageUrl,
                                    width: 300,
                                    height: 200,
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                  )
                ],
              )
            ],
          )
          
        ],
      )
    );
  }
}
