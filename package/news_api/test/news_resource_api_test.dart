import 'package:test/test.dart';
import 'package:openapi/openapi.dart';


/// tests for NewsResourceApi
void main() {
  final instance = Openapi().getNewsResourceApi();

  group(NewsResourceApi, () {
    // Get Paginated News
    //
    // Fetches a paginated list of news articles. The request accepts page and size parameters to control the pagination. By default, the first page with 5 items will be returned. The page parameter starts from 1.
    //
    //Future<GetNewsResponse> newsGet({ int page, int size, String userAgent, String X_API_KEY }) async
    test('test newsGet', () async {
      // TODO
    });

    // Get Hello Message
    //
    // Returns a simple hello message
    //
    //Future<String> newsHelloGet({ String userAgent, String X_API_KEY }) async
    test('test newsHelloGet', () async {
      // TODO
    });

  });
}
