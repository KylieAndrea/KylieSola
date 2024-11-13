import 'package:flutter/material.dart';
import 'package:flutter_1/pages/ingresar_albums.dart';
import 'package:flutter_1/pages/ingresar_comments.dart';
import 'package:flutter_1/pages/ingresar_photos.dart';
import 'package:flutter_1/pages/ingresar_posts.dart';
import 'package:flutter_1/pages/ingresar_todos.dart';
import 'package:flutter_1/pages/ingresar_users.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi ProgramA',
      home: MyProgram(),
    );
  }
}

class MyProgram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Elegir')),
        backgroundColor: Colors.deepPurple[300],
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 90,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => IngresarPosts(),
                          ),
                        );
                      },
                      icon: Icon(Icons.visibility),
                      color: Colors.blueGrey,
                      tooltip: 'Posts',
                      iconSize: 60.0,
                    ),
                    Text('Posts', style: TextStyle(color: Colors.blueGrey)),
                  ],
                ),
                SizedBox(width: 55),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => IngresarComments(),
                          ),
                        );
                      },
                      icon: Icon(Icons.comment_rounded),
                      color: Colors.blueGrey,
                      tooltip: 'Comments',
                      iconSize: 60.0,
                    ),
                    Text('Comments', style: TextStyle(color: Colors.blueGrey)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => IngresarAlbums(),
                          ),
                        );
                      },
                      icon: Icon(Icons.collections),
                      color: Colors.blueGrey,
                      tooltip: 'Albums',
                      iconSize: 60.0,
                    ),
                    Text('Albums', style: TextStyle(color: Colors.blueGrey)),
                  ],
                ),
                SizedBox(width: 55),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => IngresarPhotos(),
                          ),
                        );
                      },
                      icon: Icon(Icons.camera_alt),
                      color: Colors.blueGrey,
                      tooltip: 'Photos',
                      iconSize: 60.0,
                    ),
                    Text('Photos', style: TextStyle(color: Colors.blueGrey)),
                  ],
                ),
              ],
            ),
            SizedBox(height: 35),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => IngresarTodos(),
                          ),
                        );
                      },
                      icon: Icon(Icons.list),
                      color: Colors.blueGrey,
                      tooltip: 'Todos',
                      iconSize: 60.0,
                    ),
                    Text('Todos', style: TextStyle(color: Colors.blueGrey)),
                  ],
                ),
                SizedBox(width: 55),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => IngresarUsers(),
                          ),
                        );
                      },
                      icon: Icon(Icons.accessibility_new_sharp),
                      color: Colors.blueGrey,
                      tooltip: 'Users',
                      iconSize: 60.0,
                    ),
                    Text('Users', style: TextStyle(color: Colors.blueGrey)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
