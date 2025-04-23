import 'dart:io';

void main() {
  stdout.write('Nhập một chuỗi: ');

  String? input = stdin.readLineSync();

  print('Bạn đã nhập: $input');

  if(input != null){
    String reversed = input.split('').reversed.join('');
    print('Chuoi sau khi dao nguoc: $reversed');
  }
  else{
    print('Khong co chuoi nao duoc nhap');
  }
}
