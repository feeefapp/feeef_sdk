import 'package:feeef/lab/lab.dart';
import 'package:test/test.dart';

void main() {
  const resolved =
      '[Feeef resource attachment]\n{"type":"product","id":"p1","storeId":"s1","storeName":"Shop",'
      '"name":"Shirt","slug":"shirt","price":3000,"discount":500,"description":"Soft",'
      '"imageUrl":"https://cdn.test/a.webp","images":["https://cdn.test/a.webp"]}';

  test('parses the server-resolved product part', () {
    final product = parseLabChatResource(resolved)!;
    expect(product.id, 'p1');
    expect(product.name, 'Shirt');
    expect(product.salePrice, 2500);
    expect(product.imageUrl, 'https://cdn.test/a.webp');
    expect(parseLabChatResource('[Feeef text attachment]\n{}'), isNull);
    expect(parseLabChatResource('hello'), isNull);
  });

  test('client parts carry only the id to the server', () {
    const product = LabProductSummary(id: 'p1', storeId: 's1', name: 'Shirt');
    expect(product.ref, {'type': 'product', 'value': 'p1'});
    expect(product.chatPart['type'], labChatResourcePart);
    expect(labChatPartProduct(product.chatPart)!.name, 'Shirt');
    expect(labChatPartProduct({'type': 'text', 'text': resolved})!.id, 'p1');
    expect(labChatPartProduct({'type': 'text', 'text': 'hi'}), isNull);
  });
}
