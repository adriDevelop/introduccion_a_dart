void main(){

  emitNumbers().listen((event) {
    print('Stream value: $event');
  });

}

Stream<int> emitNumbers(){

  return Stream.periodic(Duration(seconds: 1), (value){
    // print('Desde periodic: $value');
    return value;
  }).take(5);

}