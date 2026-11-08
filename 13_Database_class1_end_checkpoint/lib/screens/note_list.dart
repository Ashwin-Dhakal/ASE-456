import 'package:flutter/material.dart';

class NoteList extends StatefulWidget {
  const NoteList({super.key});

  @override
  State<NoteList> createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  int count = 6;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes'),
        backgroundColor: Colors.teal,
      ),
      body: getNoteListView(),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            print('ADD Note Tapped');
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
              backgroundColor: Colors.blueGrey  ,
              child: Icon(Icons.keyboard_arrow_right),
            ),
            title: Text('This is Dummy Note'),
            subtitle: Text('DATE'),
            trailing: Icon(Icons.delete, color: Colors.green,),

            onTap: (){
              print('Note Tapped');
            },
          ),
        );
      },
    );
  }
}

