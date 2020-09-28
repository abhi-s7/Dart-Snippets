void main(){
  Map<String, int> phoneMap = {'Amit': 2222, 'Ram':4444,'Shyam': 3333, 'Abhishek':9090, 'Tim': 7771};
  int phoneNo = phoneMap['Ram'];
  print('Ram\'s phone numnber $phoneNo');
  phoneMap['tim'] = 7777;
  phoneMap['Amit'] = 6666;
  phoneMap.putIfAbsent('Amitesh', ()=>3333);
  //phoneMap.clear();
  bool r  = phoneMap.containsValue(2222);
  bool s = phoneMap.containsKey('Amit');
  phoneMap.remove('Shyam');
  phoneMap.removeWhere((key,value) => key.startsWith('A'));
  print(phoneMap);
  

}


/*

Sir earlier you told that Adding dart with Angular will result a website and 
for backend use Dart with Node.JS but Angular and Node.js are already 
the technologies used for websites and backend
So how dart will make the difference


*/