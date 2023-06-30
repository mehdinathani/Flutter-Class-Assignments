import 'dart:io';

void main() {
  int numFiles = 22;
  String baseFilename = 'q';
  String extension = '.dart';

  for (int i = 1; i <= numFiles; i++) {
    String filename = '${baseFilename}${i.toString().padLeft(2, '0')}${extension}';
    File(filename).createSync();

    print('File "$filename" created.');
  }

  print('All files created successfully.');
}
