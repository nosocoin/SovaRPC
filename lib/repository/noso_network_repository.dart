import 'package:noso_dart/models/noso/seed.dart';

import '../w_old/noso_network_service.dart';
import '../w_old/response_node.dart';

class NosoNetworkRepository {
  final NosoNetworkService _nodeService;

  NosoNetworkRepository(this._nodeService);

  Future<ResponseNode<List<int>>> fetchNode(String command, Seed seed) {
    return _nodeService.fetchNode(command, seed);
  }

  Future<ResponseNode<List<int>>> getRandomDevNode() {
    return _nodeService.getRandomDevNode();
  }
}
