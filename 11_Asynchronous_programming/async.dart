import 'dart:io';

void main(){
  performTask();
}

void performTask () async{
  task1();
  String? task2Result = await task2();
  task3(task2Result);
}

void task1(){
  String result = "task 1 data";
  print('Task 1 completed');
}

Future task2() async{
  Duration threeSeconds = Duration(seconds: 6);
  // sleep(threeSeconds);
  String? result;
  await Future.delayed(threeSeconds, (){
    result = 'task 2 data';
    print('Task 2 completed');
  });

  return result;
}

void task3 (String? task2Data){
  String result = 'task 2 data';
  print('Task 3 completed with $task2Data');

}