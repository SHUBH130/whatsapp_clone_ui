import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
              title: Text(
                'Whatsapp',
                style: TextStyle(fontSize: 25),
              ),
              centerTitle: false,
              actions: [
                Icon(Icons.camera_alt_outlined),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.search),
                // SizedBox(
                //   width: 5,
                // ),
                PopupMenuButton(
                  icon: Icon(Icons.more_vert_outlined),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: '1',
                      child: Text('New Groups'),
                    ),
                    PopupMenuItem(
                      value: '2',
                      child: Text('New Broadcasts'),
                    ),
                    PopupMenuItem(
                      value: '3',
                      child: Text('Linked Devices'),
                    ),
                    PopupMenuItem(
                      value: '4',
                      child: Text('Starred Messages'),
                    ),
                    PopupMenuItem(
                      value: '5',
                      child: Text('Payments'),
                    ),
                    PopupMenuItem(
                      value: '6',
                      child: Text('Settings'),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
              ],
              bottom: TabBar(tabs: [
                Icon(Icons.groups),
                Text('Chats'),
                Text('Status'),
                Text('Calls')
              ])),
          body: TabBarView(children: [
            // Text('Store'),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(
                  Icons.group_add_outlined,
                  size: 40,
                ),
                title: Text(
                  'New Community',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://image.civitai.com/xG1nkqKTMzGDvpLrqFT7WA/031e4408-3098-4f4a-9a05-d499cedf513a/width=450/04611-1843264006-Best%20quality,%20masterpiece,%20ultra%20high%20res,%20(photorealistic_1.4),%20raw%20photo,%20%20(Authentic%20skin%20texture_1.3),%20(film%20grain_1.3),%20%20pa-standard-scale-4_00x-gigapixel.jpeg'),
                    radius: 25,
                  ),
                  title: Text('Yun Lee'),
                  subtitle: Text('Where are you?'),
                  trailing: Padding(
                    padding:
                        const EdgeInsets.only(top: 10, bottom: 10, left: 10),
                    child: Column(
                      children: [
                        Text(
                          '1:34',
                          style: TextStyle(
                            color: Colors.teal,
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '1',
                          style: TextStyle(
                              color: Colors.teal,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://pbs.twimg.com/profile_images/1002416157280727040/7SjA9KTJ_400x400.jpg'),
                      radius: 25,
                    ),
                    title: Text('My Status'),
                    subtitle: Text('Tap to add status update'),
                  ),
                  ListTile(
                    title: Text(
                      'Recent upadtes',
                      style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.teal,
                            width: 3,
                          ),
                          shape: BoxShape.circle),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4yL__sSEVCa_-DDRLIuYgBRbPfV1ILuLFnQ&usqp=CAU'),
                        radius: 25,
                      ),
                    ),
                    title: Text('Kim Nayeon'),
                    subtitle: Text('Today, 3:28'),
                  ),
                  ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.teal,
                            width: 3,
                          ),
                          shape: BoxShape.circle),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4yL__sSEVCa_-DDRLIuYgBRbPfV1ILuLFnQ&usqp=CAU'),
                        radius: 25,
                      ),
                    ),
                    title: Text('Kim Nayeon'),
                    subtitle: Text('Today, 3:28'),
                  ),
                  ListTile(
                    title: Text(
                      'Viewed upadtes',
                      style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 3,
                          ),
                          shape: BoxShape.circle),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://image.civitai.com/xG1nkqKTMzGDvpLrqFT7WA/031e4408-3098-4f4a-9a05-d499cedf513a/width=450/04611-1843264006-Best%20quality,%20masterpiece,%20ultra%20high%20res,%20(photorealistic_1.4),%20raw%20photo,%20%20(Authentic%20skin%20texture_1.3),%20(film%20grain_1.3),%20%20pa-standard-scale-4_00x-gigapixel.jpeg'),
                        radius: 25,
                      ),
                    ),
                    title: Text('Yun Lee'),
                    subtitle: Text('Today, 20:34'),
                  ),
                  ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 3,
                          ),
                          shape: BoxShape.circle),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://image.civitai.com/xG1nkqKTMzGDvpLrqFT7WA/031e4408-3098-4f4a-9a05-d499cedf513a/width=450/04611-1843264006-Best%20quality,%20masterpiece,%20ultra%20high%20res,%20(photorealistic_1.4),%20raw%20photo,%20%20(Authentic%20skin%20texture_1.3),%20(film%20grain_1.3),%20%20pa-standard-scale-4_00x-gigapixel.jpeg'),
                        radius: 25,
                      ),
                    ),
                    title: Text('Yun Lee'),
                    subtitle: Text('Today, 20:34'),
                  ),
                  ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 3,
                          ),
                          shape: BoxShape.circle),
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://image.civitai.com/xG1nkqKTMzGDvpLrqFT7WA/031e4408-3098-4f4a-9a05-d499cedf513a/width=450/04611-1843264006-Best%20quality,%20masterpiece,%20ultra%20high%20res,%20(photorealistic_1.4),%20raw%20photo,%20%20(Authentic%20skin%20texture_1.3),%20(film%20grain_1.3),%20%20pa-standard-scale-4_00x-gigapixel.jpeg'),
                        radius: 25,
                      ),
                    ),
                    title: Text('Yun Lee'),
                    subtitle: Text('Today, 20:34'),
                  ),
                  ListTile(
                    title: Text(
                      'Muted upadtes',
                      style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTq31bgtawZNiGOzuJA8B53Fk-32sd8aSvmUZozIslar0MAAfUIrni8mUt1S8Hmz19_gU0&usqp=CAU'),
                      radius: 25,
                    ),
                    title: Text('Kim Jenny'),
                    subtitle: Text('Yesterday, 5:06'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTq31bgtawZNiGOzuJA8B53Fk-32sd8aSvmUZozIslar0MAAfUIrni8mUt1S8Hmz19_gU0&usqp=CAU'),
                      radius: 25,
                    ),
                    title: Text('Kim Jenny'),
                    subtitle: Text('Yesterday, 5:06'),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTq31bgtawZNiGOzuJA8B53Fk-32sd8aSvmUZozIslar0MAAfUIrni8mUt1S8Hmz19_gU0&usqp=CAU'),
                      radius: 25,
                    ),
                    title: Text('Kim Jenny'),
                    subtitle: Text('Yesterday, 5:06'),
                  ),
                ],
              ),
            ),
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://image.civitai.com/xG1nkqKTMzGDvpLrqFT7WA/031e4408-3098-4f4a-9a05-d499cedf513a/width=450/04611-1843264006-Best%20quality,%20masterpiece,%20ultra%20high%20res,%20(photorealistic_1.4),%20raw%20photo,%20%20(Authentic%20skin%20texture_1.3),%20(film%20grain_1.3),%20%20pa-standard-scale-4_00x-gigapixel.jpeg'),
                    radius: 25,
                  ),
                  title: Text('Yun Lee'),
                  subtitle: index / 2 == 0
                      ? Text(
                          'missed call',
                          style: TextStyle(color: Colors.red[700]),
                        )
                      : Text(
                          'video call',
                          style: TextStyle(color: Colors.red[700]),
                        ),
                  trailing: index / 2 == 0
                      ? Icon(
                          Icons.phone_missed_outlined,
                          color: Colors.teal,
                        )
                      : Icon(
                          Icons.missed_video_call_outlined,
                          color: Colors.teal,
                        ),
                );
              },
            ),
          ]),
        ));
  }
}
