import 'dart:io';

void main() {
  int numFiles = 22;
  String baseFilename = 'q';
  String extension = '.dart';

  String codeSnippet = 'void main() {\n\n}';

  for (int i = 1; i <= numFiles; i++) {
    String filename = '${baseFilename}${i.toString().padLeft(2, '0')}${extension}';
    File file = File(filename);
    file.createSync();
    file.writeAsStringSync(codeSnippet);

    print('File "$filename" created and code snippet added.');
  }

  print('All files created successfully with code snippets.');
}
