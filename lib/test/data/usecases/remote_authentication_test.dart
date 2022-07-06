import 'package:faker/faker.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class RemoteAuthentication {
  final HttpClient httpClient;
  final String url;

  RemoteAuthentication({required this.httpClient, required this.url});

  Future<void>? auth() async {
    httpClient.request(url: url);
  }
}

abstract class HttpClient {
  Future<void>? request({required String url});
}

class HttpClientSpy extends Mock implements HttpClient {}

void main() async {
  test('Should call httpClient with correct URL', () async {
    final httpClient = HttpClientSpy();
    final url = faker.internet.httpsUrl();
    final sut = RemoteAuthentication(httpClient: httpClient, url: url);

    await sut.auth();

    verify(httpClient.request(url: url));
  });
}
