import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

Future<Uint8List> downloadImage(String url) async {
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == HttpStatus.ok) {
    print(response.statusCode);
    return response.bodyBytes;
  } else{
    throw http.ClientException('잘못된 url', Uri.parse(url));
  }

}

Future<File> saveFile(Uint8List bytes, String filename) async {
  final file = File('lib/23_12_14/practice/$filename');
  return file.writeAsBytes(bytes);
}
void main() async {
  Uint8List down = await downloadImage('https://alimipro.com/favicon.ico');
  saveFile(down, 'imgfile.ico');
}