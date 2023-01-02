import 'package:get/get.dart';
import 'package:al_husna/data/repositories/auth_repository.dart';
import 'package:al_husna/data/repositories/article_repository.dart';

class DependencyCreator {
  static init() {
    Get.lazyPut(() => AuthenticationRepositoryIml());
    Get.lazyPut(() => ArticleRepositoryIml());
  }
}
