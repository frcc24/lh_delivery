import 'package:faker/faker.dart';
import 'package:lighthouse_delivery/data/http/http.dart';
import 'package:lighthouse_delivery/data/usecases/remote_authentication.dart';
import 'package:lighthouse_delivery/domain/helpers/helpers.dart';
import 'package:lighthouse_delivery/domain/usecases/authentication/authentication.dart';
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

  test('Should throw UnexpectedError if returns 400', () async {
    when(httpClient.request(
            url: anyNamed('url'),
            method: anyNamed('method'),
            body: anyNamed('body')))
        .thenThrow(HttpError.badRequest);

    final params =
        AuthenticationParams(faker.internet.email(), faker.internet.password());

    final future = await sut.auth(params);

    expect(future, throwsA(DomainError.unexpected));
  });

  test('Should throw UnexpectedError if returns 500', () async {
    when(httpClient.request(
            url: anyNamed('url'),
            method: anyNamed('method'),
            body: anyNamed('body')))
        .thenThrow(HttpError.unauthorized);

    final params =
        AuthenticationParams(faker.internet.email(), faker.internet.password());

    final future = await sut.auth(params);

    expect(future, throwsA(DomainError.invalidCredentials));
  });

  test('Should return an Acc if returns 200', () async {
    final accessToken = faker.guid.guid();

    when(httpClient.request(
            url: anyNamed('url'),
            method: anyNamed('method'),
            body: anyNamed('body')))
        .thenAnswer((_) async =>
            {'accessToken': accessToken, 'name': faker.person.name()});

    final params =
        AuthenticationParams(faker.internet.email(), faker.internet.password());

    final account = await sut.auth(params);

    expect(account?.token, accessToken);
  });
}
