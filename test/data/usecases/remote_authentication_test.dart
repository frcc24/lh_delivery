import 'package:faker/faker.dart';
import 'package:lighthouse_delivery/data/http/http_client.dart';
import 'package:lighthouse_delivery/data/usecases/remote_authentication.dart';
import 'package:lighthouse_delivery/screens/login/authentication.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

class HttpClientSpy extends Mock implements HttpClient {}

void main() async {
  late RemoteAuthentication sut;
  late HttpClientSpy httpClient;
  late String url;

  setUp(() {
    httpClient = HttpClientSpy();
    url = faker.internet.httpsUrl();
    sut = RemoteAuthentication(httpClient: httpClient, url: url);
  });

  test('Should call httpClient with correct values', () async {
    final params =
        AuthenticationParams(faker.internet.email(), faker.internet.password());

    await sut.auth(params);

    verify(httpClient.request(
      url: url,
      method: 'post',
      body: {'email': params.email, 'password': params.password},
    ));
  });
}
