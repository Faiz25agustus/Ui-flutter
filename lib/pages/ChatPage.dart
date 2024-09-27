import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/DetailChatPage.dart';




class Chatpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      title: 'E-commerce Chat',
      theme: ThemeData(  
        primarySwatch: Colors.blue,
        
      ),
      // Menambahkan rute untuk halaman chatPage
      routes: {
        '/': (context) => MessageListPage(),
        'chatPage': (context) => Chatpage(),
      },
    );
  }
}

class MessageListPage extends StatelessWidget {
  final List<Map<String, dynamic>> _conversations = [
    {
      "name": "Customer Support",
      "lastMessage": "Sure, feel free to ask.",
      "time": "10:02 AM",
      "unreadCount": 2,
    },
    {
      "name": "Seller ABC",
      "lastMessage": "Your order has been shipped.",
      "time": "Yesterday",
      "unreadCount": 0,
    },
    {
      "name": "Seller XYZ",
      "lastMessage": "Thank you for your purchase!",
      "time": "2 days ago",
      "unreadCount": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Messages"),
        
      ),
      body: ListView.builder(
        itemCount: _conversations.length,
        itemBuilder: (context, index) {
          return _buildConversationItem(_conversations[index], context);
        },
      ),
    );
  }

  Widget _buildConversationItem(
      Map<String, dynamic> conversation, BuildContext parentContext) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blueAccent,
        child: Text(
          conversation["name"][0],
          style: TextStyle(color: Colors.white),
        ),
      ),
      title: Text(
        conversation["name"],
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        conversation["lastMessage"],
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(conversation["time"]),
          if (conversation["unreadCount"] > 0)
            Container(
              margin: EdgeInsets.only(top: 5),
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                "${conversation['unreadCount']}",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
        ],
      ),
      onTap: () {
        Navigator.push(parentContext, MaterialPageRoute(builder:(context) {
          return DetailChatPage();
        },));
      },
    );
  }
}