import 'dart:io';

void main() {
  stdout.write('Nhập một chuỗi: ');
  String? input = stdin.readLineSync();

  print('Chuỗi đã nhập: $input');

  Map<String, int> demKyTu = {};

  if (input != null) {
    for (int i = 0; i < input.length; i++) {
      String kyTu = input[i];

      if (demKyTu.containsKey(kyTu)) {
        demKyTu[kyTu] = demKyTu[kyTu]! + 1;
      } else {
        demKyTu[kyTu] = 1;
      }
    }

    print('Số lần xuất hiện của mỗi ký tự:');
    demKyTu.forEach((kyTu, soLan) {
      print("'$kyTu': $soLan lần");
    });
  }
}
