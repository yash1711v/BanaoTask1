import 'dart:convert';

import 'package:http/http.dart';

class Apidata{
  Future<Map> getPrograms() async{
    try{
      Response response=  await get(Uri.parse('https://632017e19f82827dcf24a655.mockapi.io/api/programs'));
      print(response.body);
      Map Programs = jsonDecode(response.body);
      //print(data['items'][0]['name']);
      return Programs;
    }catch(e){
      print('cought Error: $e');
      Map data ={};
      return data;
    }}
  Future<Map> getLessons() async{
    try{
      Response response2=  await get(Uri.parse('https://632017e19f82827dcf24a655.mockapi.io/api/lessons'));
      print(response2.body);
      Map Lessons = jsonDecode(response2.body);
      //print(data['items'][0]['name']);
      return Lessons;
    }catch(e){
      print('cought Error: $e');
      Map data ={};
      return data;
    }}


}