import 'dart:io';

void main() {
  // Define the path of the directory
  String directoryPath = 'D:/VS_CODE/Dart/learn_Dart';

  // Call the function to read and print file names
  readAndPrintFileNames(directoryPath);
}

void readAndPrintFileNames(String path) {
  final directory = Directory(path);

  if (!directory.existsSync()) {
    print('The directory does not exist!');
    return;
  }

  // List all entities (files and subdirectories) in the directory
  final entities = directory.listSync();

  print('Files in directory "$path":');
  for (var entity in entities) {
    if (entity is File) {
      print(entity.path.split(Platform.pathSeparator).last); // Print file name
    }
  }
}
