import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class AddNomineesCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? relationship = '',
    String? email = '',
    String? mobile = '',
    String? city = '',
    String? state = '',
    String? photoUrl = '',
    String? jwt = '',
  }) {
    final body = '''
{
  "email": "${email}",
  "name": "${name}",
  "mobile": "${mobile}",
  "relationship": "${relationship}",
  "city": "${city}",
  "state": "${state}",
  "photo_url": "${photoUrl}",
  "jwt": "${jwt}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addNominees',
      apiUrl:
          'https://7af0-2409-40c1-2d-4631-49f2-d501-b7be-36d7.in.ngrok.io/add_nominee',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'Content-Type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CompleteProfileCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? mobile = '',
    String? city = '',
    String? jwt = '',
    int? notificationOption = 1,
  }) {
    final body = '''
{
  "city": "${city}",
  "name": "${name}",
  "mobile": "${mobile}",
  "jwt": "${jwt}",
  "notification_option": ${notificationOption}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'completeProfile',
      apiUrl:
          'https://7af0-2409-40c1-2d-4631-49f2-d501-b7be-36d7.in.ngrok.io/complete_profile',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'Content-Type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class LoginCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) {
    final body = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl:
          'https://7af0-2409-40c1-2d-4631-49f2-d501-b7be-36d7.in.ngrok.io/login',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'Content-Type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class EditNomineeCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? email = '',
    String? city = '',
    String? relationship = '',
    String? state = '',
    String? photoUrl = '',
    String? mobile = '',
    String? id = '',
    String? jwt = '',
  }) {
    final body = '''
{
  "email": "${email}",
  "name": "${name}",
  "mobile": "${mobile}",
  "relationship": "${relationship}",
  "city": "${city}",
  "state": "${state}",
  "photo_url": "${photoUrl}",
  "id": "${id}",
  "jwt": "${jwt}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'editNominee',
      apiUrl:
          'https://7af0-2409-40c1-2d-4631-49f2-d501-b7be-36d7.in.ngrok.io/edit_nominee',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'Content-Type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class IsNewUserCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
  }) {
    final body = '''
{
  "jwt": "${jwt}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'isNewUser',
      apiUrl:
          'https://7af0-2409-40c1-2d-4631-49f2-d501-b7be-36d7.in.ngrok.io/is_new_user',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'Content-Type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SignupCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) {
    final body = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'signup',
      apiUrl:
          'https://7af0-2409-40c1-2d-4631-49f2-d501-b7be-36d7.in.ngrok.io/signup',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'Content-Type': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ListDocumentsCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    String? category = '',
  }) {
    final body = '''
{
  "jwt": "${jwt}",
  "category": "${category}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'listDocuments',
      apiUrl:
          'https://7af0-2409-40c1-2d-4631-49f2-d501-b7be-36d7.in.ngrok.io/list_documents/',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic documents(dynamic response) => getJsonField(
        response,
        r'''$.documents''',
        true,
      );
  static dynamic insurer(dynamic response) => getJsonField(
        response,
        r'''$.insurer''',
      );
  static dynamic type(dynamic response) => getJsonField(
        response,
        r'''$.type''',
      );
}

class ListNomineesCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
  }) {
    final body = '''
{
  "jwt": "${jwt}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'listNominees',
      apiUrl:
          'https://7af0-2409-40c1-2d-4631-49f2-d501-b7be-36d7.in.ngrok.io/list_nominees',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic nominees(dynamic response) => getJsonField(
        response,
        r'''$.nominees''',
        true,
      );
  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.documents[:].name''',
        true,
      );
  static dynamic relationship(dynamic response) => getJsonField(
        response,
        r'''$.documents[:].relationship''',
        true,
      );
}

class IsNewDocumentCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
  }) {
    final body = '''
{
  "jwt": "${jwt}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'isNewDocument',
      apiUrl:
          'https://7af0-2409-40c1-2d-4631-49f2-d501-b7be-36d7.in.ngrok.io/is_new_document',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic nominees(dynamic response) => getJsonField(
        response,
        r'''$.nominees''',
        true,
      );
  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.documents[:].name''',
        true,
      );
  static dynamic relationship(dynamic response) => getJsonField(
        response,
        r'''$.documents[:].relationship''',
        true,
      );
}

class UpdateUserReadCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
  }) {
    final body = '''
{
  "jwt": "${jwt}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateUserRead',
      apiUrl:
          'https://7af0-2409-40c1-2d-4631-49f2-d501-b7be-36d7.in.ngrok.io/update_last_read',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic nominees(dynamic response) => getJsonField(
        response,
        r'''$.nominees''',
        true,
      );
  static dynamic name(dynamic response) => getJsonField(
        response,
        r'''$.documents[:].name''',
        true,
      );
  static dynamic relationship(dynamic response) => getJsonField(
        response,
        r'''$.documents[:].relationship''',
        true,
      );
}

class DeleteNomineeCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    String? id = '',
  }) {
    final body = '''
{
  "jwt": "${jwt}",
  "nominee_id": "${id}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'deleteNominee',
      apiUrl:
          'https://7af0-2409-40c1-2d-4631-49f2-d501-b7be-36d7.in.ngrok.io/delete_nominee',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class DeleteDocumentCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    String? id = '',
  }) {
    final body = '''
{
  "jwt": "${jwt}",
  "document_id": "${id}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'deleteDocument',
      apiUrl:
          'https://7af0-2409-40c1-2d-4631-49f2-d501-b7be-36d7.in.ngrok.io/delete_document',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ViewNomineeCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    String? id = '',
  }) {
    final body = '''
{
  "jwt": "${jwt}",
  "id": "${id}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'viewNominee',
      apiUrl:
          'https://7af0-2409-40c1-2d-4631-49f2-d501-b7be-36d7.in.ngrok.io/view_nominee',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic nominee(dynamic response) => getJsonField(
        response,
        r'''$.nominee''',
      );
}

class AddDocumentCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    String? comments = '',
    String? folioNumber = '',
    String? provider = '',
    String? type = '',
    String? insurer = '',
    String? policyNumber = '',
    String? bankName = '',
    String? accountNumber = '',
    String? branchName = '',
    String? category = '',
    String? storagePlace = '',
    String? form = '',
    String? issuer = '',
    String? loanNumber = '',
    String? propertyAddress = '',
    List<String>? nomineeEmailsList,
  }) {
    final nomineeEmails = _serializeList(nomineeEmailsList);

    final body = '''
{
  "jwt": "${jwt}",
  "comments": "${comments}",
  "folio_number": "${folioNumber}",
  "provider": "${provider}",
  "type": "${type}",
  "insurer": "${insurer}",
  "policy_number": "${policyNumber}",
  "bank_name": "${bankName}",
  "account_number": "${accountNumber}",
  "branch_name": "${branchName}",
  "storage_place": "${storagePlace}",
  "form": "${form}",
  "issuer": "${issuer}",
  "loan_number": "${loanNumber}",
  "property_address": "${propertyAddress}",
  "category": "${category}",
  "nominee_emails": ${nomineeEmails}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addDocument',
      apiUrl:
          'https://7af0-2409-40c1-2d-4631-49f2-d501-b7be-36d7.in.ngrok.io/add_document/',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class EditDocumentCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    String? id = '',
    String? comments = '',
    String? docPath = '',
    String? folioNumber = '',
    String? provider = '',
    String? type = '',
    String? insurer = '',
    String? policyNumber = '',
    String? bankName = '',
    String? accountNumber = '',
    String? branchName = '',
    String? storagePlace = '',
    String? form = '',
    String? issuer = '',
    String? loanNumber = '',
    String? propertyAddress = '',
  }) {
    final body = '''
{
  "jwt": "${jwt}",
  "document_id": "${id}",
  "comments": "${comments}",
  "docPath": "${docPath}",
  "folio_number": "${folioNumber}",
  "provider": "${provider}",
  "type": "${type}",
  "insurer": "${insurer}",
  "policy_number": "${policyNumber}",
  "bank_name": "${bankName}",
  "account_number": "${accountNumber}",
  "branch_name": "${branchName}",
  "storage_place": "${storagePlace}",
  "form": "${form}",
  "issuer": "${issuer}",
  "loan_number": "${loanNumber}",
  "property_address": "${propertyAddress}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'editDocument',
      apiUrl:
          'https://7af0-2409-40c1-2d-4631-49f2-d501-b7be-36d7.in.ngrok.io/edit_document/',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ViewDocumentCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    String? id = '',
  }) {
    final body = '''
{
  "jwt": "${jwt}",
  "document_id": "${id}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'viewDocument',
      apiUrl:
          'https://7af0-2409-40c1-2d-4631-49f2-d501-b7be-36d7.in.ngrok.io/view_document/',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ViewDocumentByNomineeCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    String? id = '',
  }) {
    final body = '''
{
  "jwt": "${jwt}",
  "document_id": "${id}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'viewDocumentByNominee',
      apiUrl:
          'https://7af0-2409-40c1-2d-4631-49f2-d501-b7be-36d7.in.ngrok.io/get_particular_document/',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetNomineesCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
  }) {
    final body = '''
{
  "jwt": "${jwt}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getNominees',
      apiUrl:
          'https://7af0-2409-40c1-2d-4631-49f2-d501-b7be-36d7.in.ngrok.io/get_nominees',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetdocumentsByNomineeCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
  }) {
    final body = '''
{
  "jwt": "${jwt}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getdocumentsByNominee',
      apiUrl:
          'https://7af0-2409-40c1-2d-4631-49f2-d501-b7be-36d7.in.ngrok.io/get_documents',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetnomineesfordocumentCall {
  static Future<ApiCallResponse> call({
    String? jwt = '',
    String? id = '',
  }) {
    final body = '''
{
  "jwt": "${jwt}",
  "document_id": "${id}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getnomineesfordocument',
      apiUrl:
          'https://7af0-2409-40c1-2d-4631-49f2-d501-b7be-36d7.in.ngrok.io/get_nominees_for_document/',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
