import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              title: Text('WhatsApp'),
              bottom: TabBar(
                indicatorColor: Colors.white,
                tabs: [
                  Tab(child: Icon(Icons.camera_alt)),
                  Tab(
                      child:
                          Text('Chats', style: TextStyle(color: Colors.white))),
                  Tab(
                      child: Text('Status',
                          style: TextStyle(color: Colors.white))),
                  Tab(
                      child:
                          Text('Calls', style: TextStyle(color: Colors.white))),
                ],
              ),
              actions: [
                Container(
                    padding: EdgeInsets.only(right: 10),
                    child: Icon(Icons.search)),
                Container(
                  padding: EdgeInsets.only(right: 10),
                  //child: Icon(Icons.more_vert_outlined)
                  child: PopupMenuButton(
                      icon: Icon(Icons.more_vert_outlined),
                      itemBuilder: (
                        context,
                      ) =>
                          [
                            PopupMenuItem(child: Text('Create Group')),
                            PopupMenuItem(child: Text('Settings')),
                            PopupMenuItem(child: Text('Log Out')),
                          ]),
                ),
              ],
            ),
            body: TabBarView(
              children: [
                Text(''),
                //Chats Portion Code
 //________________________________________________________________________________________________________
                ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(width: 0.1))),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://www.insaf.pk/sites/default/files/IK.jpg'),
                          ),
                          title: Text('Imran Khan'),
                          subtitle: Text('PTI Coming Back Soon!'),
                          trailing: Text('11:40 PM'),
                        ),
                      );
                    }),
 //________________________________________________________________________________________________________

                //Status Code
 //________________________________________________________________________________________________________

                Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                          itemCount: 7,
                          itemBuilder: (context, index) {
                            if (index == 0) {
                              return
                                 ListTile(
                                  leading: Container(

                                    child: CircleAvatar(
                                      backgroundColor: Color(0xffdcf8c6),
                                      child: Icon(Icons.person, color: Colors.white),
                                    ),
                                  ),
                                  title: Text('My Status'),
                                  subtitle: Text('Add to my status'),
                                  trailing: Wrap(
                                    children: [
                                      CircleAvatar(

                                          backgroundColor: Color(0xffdcf8c6),
                                          child: TextButton(
                                              child: Icon(Icons.camera_alt),
                                              onPressed: () {})),
                                      CircleAvatar(
                                          backgroundColor: Color(0xffdcf8c6),
                                          child: TextButton(child: Icon(Icons.edit),onPressed: (){})
                                      )
                                    ],
                                  ),
                                );

                            } 
                            else if(index==1)
                             {
                               return Container(
                                    height: 27,

                                   decoration: BoxDecoration(
                                     color: Color(0xffece5dd),
                                   ),

                                   padding: EdgeInsets.only(left:16,right:16,top:5 ),

                                   child: Text('Recent Updates',style: TextStyle(color: Color(0xff25d366)),
                                   ));
                             }
                            else {
                              return Container(
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(width: 0.1))),
                                child: ListTile(
                                  leading: Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border:Border.all(
                                          color: Colors.green,
                                          width: 2,
                                        )
                                    ),
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          'https://www.insaf.pk/sites/default/files/IK.jpg'),
                                    ),
                                  ),
                                  title: Text('Imran Khan'),
                                  subtitle: Text('$index h ago'),

                                ),
                              );
                            }
                          }),
                    ),
                  ],
                ),
 //________________________________________________________________________________________________________

 //              Calls Code  Starts Here
 //_________________________________________________________________________________________________________
                ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            border: Border(bottom: BorderSide(width: 0.01))),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://www.insaf.pk/sites/default/files/IK.jpg'),
                          ),
                          title: Text(
                            'Imran Khan',
                            style: TextStyle(
                                color:
                                    index % 2 == 0 ? Colors.red : Colors.black),
                          ),
                          subtitle: Row(
                            children: [
                              Icon((index % 2).toInt() == 0
                                  ? Icons.call
                                  : Icons.videocam),
                              Text(index % 2 == 0 ? 'Missed' : 'Outgoing'),
                            ],
                          ),
                          trailing:
                              Wrap(
                                  children:[
                                    Container(
                                      padding:EdgeInsets.only(top:12),
                                        child: Text(index ~/ 2 == 0 ? 'Tuesday' : 'Monday')
                                    ),
                                    CircleAvatar(
                                        backgroundColor: Color(0xfffff),
                                        child: TextButton(child: Icon(Icons.info_outline),onPressed: (){})
                                    ),


                              ] ),
                        ),
                      );
                    }),
 //_________________________________________________________________________________________________________
              ],
            )));
  }
}
