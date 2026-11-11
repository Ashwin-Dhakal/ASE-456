import 'package:flutter/material.dart';

class NoteDetail extends StatefulWidget {
  const NoteDetail({super.key});

  @override
  State<NoteDetail> createState() => _NoteDetailState();
}

class _NoteDetailState extends State<NoteDetail> {

  String selectedPriority = 'High';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Note'),
      ),
      body: ListView(
        children: [
          //first element
          ListTile(
              leading: Icon(Icons.flag),
              title: DropdownButton(
              items: [
                DropdownMenuItem(
                  value: 'High',
                    child: Text('High'),),

                DropdownMenuItem(
                  value: 'Low',
                  child: Text('Low'),),
              ],
              value: selectedPriority,
              onChanged: (newValue){
                setState(() {
                  selectedPriority = newValue!;
                });
              }

          )),

          //second element
          Container(
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Title',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                )
              ),
              onChanged: (value){
                print("something changed in the field $value");
              },

            ),
            padding: EdgeInsets.all(15),
          ),

          //third element
          Container(
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Description',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  )
              ),
              onChanged: (value){
                print("something changed in the field $value");
              },

            ),
            padding: EdgeInsets.all(15),
          ),

          //forth element
          Container(
            child: Row(
              children: [
                //button 1
                Expanded(
                  child: ElevatedButton(onPressed: (){
                    print("save button pressed");
                  }, child: Text('Save'),),
                ),
                Container(width: 20,),

                //button 2
                Expanded(
                  child: ElevatedButton(onPressed: (){
                    print("save button pressed");
                  }, child: Text('Delete'),),
                ),

              ],
            ),
            padding: EdgeInsets.all(15),
          ),



        ],
      ),



    );
  }
}



