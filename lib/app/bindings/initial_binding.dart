import 'package:get/get.dart';

import '../../data/local/storage_service.dart';
import '../../data/network/api_service.dart';
import '../../data/repositories/auth_repository.dart';


class InitialBinding implements Bindings {
  @override
  void dependencies() {
    // 持久化服务
    Get.put(StorageService(), permanent: true);
    Get.put(ApiService(), permanent: true);

    // 仓库
    Get.lazyPut(() => AuthRepository(), fenix: true);
  }
}