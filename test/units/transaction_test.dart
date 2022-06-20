import 'package:bytebank/models/transaction.dart';
import 'package:bytebank/screens/transaction_form.dart';
import 'package:flutter_test/flutter_test.dart';

void main (){
  test('Should return a value when create a transaction',
          () {
            final transaction = Transaction(null, 200, null);
            expect(transaction.value, 200);
          });

  test('Should show error when creat a transaction with value less than 0',
          () {
    expect(() => Transaction(null,0, null), throwsAssertionError);
          });

}