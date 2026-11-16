import 'package:flutter/material.dart';


class NoteList extends StatefulWidget {
  const NoteList({super.key});

  @override
  State<NoteList> createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  int count= 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Note Keeping'),
        backgroundColor: Colors.teal,
      ),
      body: getNoteListView(),
      
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            print('+ icon clicked');
          },
        child: Icon(Icons.add),
          ),

    );
  }
  ListView getNoteListView(){
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int position){
        return Card(
          color: Colors.white,
          elevation: 2.0,

          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.yellow,
              child: Icon(Icons.keyboard_arrow_right),
            ),
            title: Text('Dummy Note Title'),
            subtitle: Text('Dummy Date here'),
            trailing: Icon(Icons.delete, color: Colors.grey,),

            onTap: (){
              print('Note tapped');
            },
          ),
        );
      }
    );
  }
}
