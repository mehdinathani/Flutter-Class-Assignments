import 'dart:io';

void main() {
  for (var i = 1; i <= 4; i++) {
    for (var j = 1; j <= 4 - i; j++) {
      stdout.write('');
    }
    for (var k = 1; k <= i; k++) {
      stdout.write(' *');
    }
    stdout.write('\n');
  }
}
