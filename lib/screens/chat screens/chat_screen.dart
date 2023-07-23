import 'package:flutter/material.dart';
import 'package:bedaya/screens/chose%20team%20screen/chose1_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final _firestore = FirebaseFirestore.instance;
late User sigenedInUser;

class CahtScreen extends StatefulWidget {
  static const String screenRoute = 'caht_screen';
  const CahtScreen({super.key});

  @override
  State<CahtScreen> createState() => _CahtScreenState();
}

class _CahtScreenState extends State<CahtScreen> {
  final messageTextController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  String? messageText;
  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        sigenedInUser = user;
        print(sigenedInUser.email);
      }
    } catch (e) {
      print(e);
    }
  }

  // void getMessages() async {
  //   final messages = await _firestore.collection('messages').get();

  //   for (var message in messages.docs) {
  //     print(message.data());
  //   }
  // // }
  // void messagesgetStream() async {
  //   await for (var snapshot in _firestore.collection('messages').snapshots()) {
  //     for (var message in snapshot.docs) {
  //       print(message.data());
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 39, 39, 39),
        title: Row(
          children: [
            Image.asset('images/logo png.png', height: 75),
            SizedBox(
              width: 10,
            ),
            Text('Bedaya Chat'),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              // messagesgetStream();
              _auth.signOut();
              Navigator.pushNamed(context, Chose1_Screen.screenRoute);
            },
            icon: Icon(Icons.close),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // messageStreamBuilder(),

            messageStreamBuilder(),

            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                      color: Color.fromARGB(255, 19, 18, 18), width: 2),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: TextField(
                      controller: messageTextController,
                      onChanged: (Value) {
                        messageText = Value;
                      },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                        hintText: 'write your message here',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      messageTextController.clear();
                      _firestore.collection('messages').add({
                        'text': messageText,
                        'sender': sigenedInUser.email,
                        'time': FieldValue.serverTimestamp()
                      });
                    },
                    child: Text(
                      'Send',
                      style: TextStyle(
                        color: Color.fromARGB(255, 6, 173, 12),
                        fontWeight: FontWeight.bold,
                        fontSize: 19,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class messageStreamBuilder extends StatelessWidget {
  const messageStreamBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: _firestore.collection('messages').orderBy('time').snapshots(),
        builder: (context, snapshot) {
          List<messageLine> messageWigets = [];

          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(
                backgroundColor: Color.fromARGB(255, 1, 36, 2),
              ),
            );
          }

          final messages = snapshot.data!.docs.reversed;
          final currentUser = sigenedInUser.email;
          for (var message in messages) {
            final messageText = message.get('text');
            final messageSender = message.get('sender');
            final messagewidget = messageLine(
              sender: messageSender,
              text: messageText,
              isMe: currentUser == messageSender,
            );
            messageWigets.add(messagewidget);
          }

          return Expanded(
            child: ListView(
              reverse: true,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              children: messageWigets,
            ),
          );
        });
  }
}

// class messageStreamBuilder extends StatelessWidget {
//   const messageStreamBuilder({super.key});

//   @override
//   Widget build(BuildContext context) {
// //     return StreamBuilder<QuerySnapshot>(
//         stream: _firestore.collection('snapshot.docs').snapshots(),
//         builder: (context, snapshot) {
//           List<messageLine> messageWidgets = [];

//           if (!snapshot.hasData) {
//             return Center(
//               child: CircularProgressIndicator(
//                 backgroundColor: Colors.green,
//               ),
//             );
//           }
//           final messages = snapshot.data!.docs.reversed;
//           for (var message in messages) {
//             final messageText = message.get('text');
//             final messageSender = message.get('sender');
//             final currentUser = sigenedInUser.email;

//             final messageWidget = messageLine(
//               sender: messageSender,
//               text: messageText,
//               isMe: currentUser == messageSender,
//             );
//             messageWidgets.add(messageWidget);
//           }

//           return Expanded(
//             child: ListView(
//               reverse: true,
//               padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
//               children: messageWidgets,
//             ),
//           );
//         });
//   }
// }

class messageLine extends StatelessWidget {
  const messageLine({this.text, this.sender, required this.isMe, super.key});
  final String? text;
  final String? sender;
  final bool isMe;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(
            '$sender',
            style: isMe
                ? TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 1, 90, 20),
                    fontWeight: FontWeight.bold)
                : TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 126, 125, 125),
                    fontWeight: FontWeight.bold,
                  ),
          ),
          Material(
            elevation: 5,
            borderRadius: isMe
                ? BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  )
                : BorderRadius.only(
                    topRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
            color: isMe
                ? Color.fromARGB(255, 1, 58, 3)
                : Color.fromARGB(255, 49, 49, 49),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                '$text ',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
