import 'dart:html';
// ignore: import_of_legacy_library_into_null_safe
import 'package:pwa/client.dart' as pwa;

void main() {
  pwa.Client(scriptUrl: './pwa.dart.js');
  window.navigator.mediaDevices?.getUserMedia({'video': true}).then((stream) {
    var video = VideoElement()
      ..autoplay = true
      ..srcObject = stream
      ..id = 'camera';
    document.querySelector('#output')?.append(video);
  });
}
