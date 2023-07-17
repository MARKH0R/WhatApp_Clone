import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("WhatsApp"),
            backgroundColor: Colors.teal,
            bottom: const TabBar(
              tabs:  [
                Tab(
                  child:Icon(Icons.group_add_rounded),
                ),
                Tab(
                    child:Text("Chats"),
                ),
                Tab(
                  child: Text("Status"),
                ),
                Tab(
                  child: Text("Calls"),
                ),
              ],
            ),

            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.camera_alt_sharp),
                    onPressed: () {
                      // Implement your search logic here
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      // Implement your search logic here
                    },

              ),


                ],
              ),
              PopupMenuButton(
                icon: Icon(Icons.more_vert),
                itemBuilder: (context,)=>[
                PopupMenuItem(
                    value: 1,
                    child: Text("New Group")),
                PopupMenuItem(
                      value: 2,
                      child: Text("New BroadCast")),
                PopupMenuItem(
                      value: 1,
                      child: Text("Linked Devices")),
                PopupMenuItem(
                      value: 1,
                      child: Text("Starred messages")),
                PopupMenuItem(
                      value: 1,
                      child: Text("Settings")),
            ],

          ),
          ],
        ),
          body: TabBarView(
            children: [
              ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      height: 100,
                      width: 350,
                      decoration: BoxDecoration(
                        color: Colors.green.shade100,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children:  [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage(
                                index % 2 == 0
                                    ? "assets/GDSCLogo.jpg"
                                    : "assets/NUTECLogo.jpg",
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  index % 2 == 0 ? "GDSC Fast NUCES Peshawar" : "NUTEC",
                                  style: TextStyle(fontSize: 16),
                                ),
                                const SizedBox(height: 5),
                                Text(index % 2 == 0 ?"Build Connect and Grow":"Let's Guild the Future",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                  );



                },

              ),
              ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return  ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(
                        index <= 2 || (index >= 30 && index % 2 == 0)
                            ? "assets/moiz.jpeg"
                            : "assets/my_photo.jpg",
                      ),
                    ),
                    title: Text(index <= 2 || index >= 30 && index % 2 ==0  ? "Moiz":"Armghan"),
                    subtitle: Text(index <= 2 || index >= 15 && index % 2 ==0  ? "Bro Flutter is amazing":"Hello, I'm Google Developers Group LHR Member"),
                    trailing: Text("3:40"),
                  );
                },
              ),
              Container(
                height: 30,
                width: 200,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: 70,
                      width: 400,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Stack(
                            children: const [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: AssetImage("assets/my_photo.jpg"),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 0,
                                child: Icon(Icons.add),
                              ),
                            ],
                          ),
                          const SizedBox(width: 8),
                          Positioned(
                            right: 10,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:const [
                                Text("Add Status"),
                                Text("tap to add status update"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return  ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.green,
                                  width: 3,
                                ),
                              ),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage(
                                  index % 2 == 0
                                      ? "assets/moiz.jpeg"
                                      : "assets/my_photo.jpg",
                                ),
                              ),
                            ),
                            title: Text( index % 2 ==0  ? "Moiz":"Armghan"),
                            subtitle: Text(index % 2 ==0  ? "10 mins ago" : "Just Now"),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                itemCount: 50,
                itemBuilder: (context, index) {
                  return  ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(
                        index <= 2 || (index >= 30 && index % 2 == 0)
                            ? "assets/moiz.jpeg"
                            : "assets/my_photo.jpg",
                      ),
                    ),
                    title: Text(index <= 2 || index >= 30 && index % 2 ==0  ? "Moiz":"Armghan"),
                    subtitle: Text(index <= 2 || index >= 30 && index % 2 ==0  ? "You Missed Call" : "Today, 12:33 PM"),
                    trailing: Icon(index <= 2 || index >= 30 && index % 2 ==0  ? Icons.call: Icons.video_call),
                  );
                },
              ),

            ],
          ),

        ),
    );
  }
}

