import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Document {
  Document({
    required this.title,
    required this.fileLocation,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final String fileLocation;
}
