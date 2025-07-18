import 'dart:async';

import 'student.dart';
void main(List<String> arguments) {
   //assginment1(); first
   //StudentStatus(); second
   //findhighscore(); third
    // Stream<int> filter = display3n(200); fourth
    // filter.listen((event) => print(event),); fifth
      // List<String>  li = ["Ali","Sulman","Asrar","Saqib","Islam"]; six
      // Stream<List> countnames = countname(li);
      // countnames.listen((event) {
      //   print(event);
      // },);
    //  customadd(); 
// Future<List> rp = responce(); seven
// rp.then((value) {
//   print(value);
// },);
  // loaddata(); eight question



}

//patteren matching 1
void assginment1(){
  var match = [1, "Ali", [10, 20], {"id": 100}];
  if(match case [int _ , String _ , [int _,int _] , {"id":_}]){
    print("conditionis true patteren is match");
  } else {
    print('patteren not match');
  }
}

//patteren mmatching 2
void studentStatus(){
  Student st = Student(name: "Asrar", marks: 400);
  var Student(:name , :marks!) = st;
  if(marks>0 && marks<200){
          print("$name is fail");
  } else if (marks>=200 && marks<400){
       print("$name is Average");
  } else if(marks>=400){
        print("$name is Topper");
  }
}

//patteren matching 3
 void findhighscore(){
  List<List<int>> score = [[50, 60], [90, 30], [30, 20]];
      if(score case [[int f1, int f2],[int s1,int s2],[int t1,int t2]]){
        if(f1+f2 > s1+s2 || f1+f2 > t1+t2 ){
          print("pair high in list($f1,$f2)");
        } else if((s1+s2 > f2+f2) || (s1+s2 > t2+t2)){
          print("pair high in list($s1,$s2)");
        } else if((t1+t2 > f2+f1) || (t1+t2 > s1+s2)){
                  print("pair high in list($t1,$t2)");
        }
      }
 }

 // Stream 1
 Stream<int> display3n(int max) async*{
  List<int> filterno=[];
  for (var i = 0; i < max; i++) {
    if (i % 5 == 0 && i % 7 == 0) {
     filterno.add(i);
    }
  }
for (var i = 0; i <3; i++) {
  int temp = filterno[i];
  yield temp;
}
 }

//stream 5

Stream<List> countname(List li) async*{
  List<String> name = [];
for (var i = 0; i < li.length; i++) {
  String index = li[i];
  if(index.startsWith("A") || index.startsWith("a")){
    name.add(index);
  }
}
yield name;
}

//stream 6

void customadd() async{
   List<String>  li = ["Ali","Sulman","Asrar","Saqib","STOP","Islam"]; 
     StreamController controller = StreamController();
     controller.stream.listen((event) {
        print(event);
      },);
     for (var i = 0; i < li.length; i++) {
        controller.sink.add(li[i]);
        await Future.delayed(Duration(seconds: 1));
        if(li[i] == "STOP"){
          controller.close();
          print("Controller is stop");
          break;      
       }
     }
      
}

// Async question 7

Future<List> responce()async{
  List<dynamic> list = [1,'Asrar',34.1,'Count number'];
  await Future.delayed(Duration(seconds: 2));
    print("successful connection");
   return list;
}

// Async question 8
void loaddata()async{
  await Future.delayed(Duration(seconds: 2));
  print("load profile seccessfull");
  await Future.delayed(Duration(seconds: 3));
  print("load your post is seccessfull");
  await Future.delayed(Duration(seconds: 1));
   print("load your Dashboard is seccessfull");  
  
}

// Isolate question 9
