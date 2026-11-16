
class Note {
  int? _id; // making it nullable; A new note can exist with no id
  String _title;
  String _description;
  String _date;
  int  _priority;

  Note(this._title, this._date, this._priority, [this._description = '']);
  Note.withId(this._id, this._title, this._date, this._priority, [this._description = '']);

  //Getters:
  int? get id => _id;
  String get title => _title;
  String get description => _description;
  int get priority => _priority;
  String get date => _date;

  //Setters
  set title (String newTitle){
    if (newTitle.length <=255){
      this._title = newTitle;
    }
  }

  set description (String newDescription){
    if (newDescription.length <=255){
      this._description = newDescription;
    }
  }

  set priority (int newPriority){
    if (newPriority ==1 || newPriority == 2){
      this._priority = newPriority;

    }
  }

  set date(String newDate){
    this._date = newDate;
  }

  // convert Note object into Map Object
  Map <String, dynamic > toMap(){
    var map = Map<String, dynamic> (); // creates an empty Map.
    if (id != null){
      map ['id'] = _id;
    }
    map['title'] = _title;
    map['description'] = _description;
    map['priority'] = _priority;
    map['date'] = _date;

    return map;
  }

  //extract note object from a Map object
  Note.fromMapObject (Map <String, dynamic> map){
    this._id = map['id'];
    this._title = map['title'];
    this._description = map['description'];
    this._priority = map['priority'];
    this._date = map['date'];

  }

}