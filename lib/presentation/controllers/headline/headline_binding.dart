import 'package:get/get.dart';
import 'package:al_husna/domain/usecases/fetch_headline_use_case.dart';
import 'package:al_husna/data/repositories/article_repository.dart';
import 'package:al_husna/presentation/controllers/headline/headline_controller.dart';

class HeadlineBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FetchHeadlineUseCase(Get.find<ArticleRepositoryIml>()));
    Get.lazyPut(() => HeadlineController(Get.find()));
  }
}
