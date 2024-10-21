
Future<String> fetchData() async{
  return await Future.delayed(Duration(seconds: 5), (){
    return 'datos obtenidos';
  });
}

void main () async{
  print('esperando...');
  String d = await fetchData();
  print(d);
}