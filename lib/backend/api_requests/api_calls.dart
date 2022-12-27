import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

Future<ApiCallResponse> getClusterCall() {
  return ApiManager.instance.makeApiCall(
    callName: 'get cluster',
    apiUrl: 'https://api.mockaroo.com/api/bffbea40?count=1&key=72513f10',
    callType: ApiCallType.GET,
    headers: {},
    params: {},
    returnBody: true,
  );
}

Future<ApiCallResponse> getNodeOneCall() {
  return ApiManager.instance.makeApiCall(
    callName: 'get node one',
    apiUrl: 'https://api.mockaroo.com/api/7ed34070?count=4&key=72513f10',
    callType: ApiCallType.GET,
    headers: {},
    params: {},
    returnBody: true,
  );
}

Future<ApiCallResponse> getNodeTwoCall() {
  return ApiManager.instance.makeApiCall(
    callName: 'get node two',
    apiUrl: 'https://api.mockaroo.com/api/e7c5a760?count=1&key=72513f10',
    callType: ApiCallType.GET,
    headers: {},
    params: {},
    returnBody: true,
  );
}

Future<ApiCallResponse> getNodeThreeCall() {
  return ApiManager.instance.makeApiCall(
    callName: 'get node three',
    apiUrl: 'https://api.mockaroo.com/api/1a015540?count=1&key=72513f10',
    callType: ApiCallType.GET,
    headers: {},
    params: {},
    returnBody: true,
  );
}

Future<ApiCallResponse> getNodeFourCall() {
  return ApiManager.instance.makeApiCall(
    callName: 'get node four',
    apiUrl: 'https://api.mockaroo.com/api/3bd199e0?count=1&key=72513f10',
    callType: ApiCallType.GET,
    headers: {},
    params: {},
    returnBody: true,
  );
}

Future<ApiCallResponse> getClusterInfoCall() {
  return ApiManager.instance.makeApiCall(
    callName: 'getClusterInfo',
    apiUrl: 'http://demo2066798.mockable.io/clusterinfo',
    callType: ApiCallType.GET,
    headers: {},
    params: {},
    returnBody: true,
  );
}
