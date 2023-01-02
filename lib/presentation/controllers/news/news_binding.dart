import 'package:get/get.dart';
import 'package:al_husna/data/repositories/article_repository.dart';
import 'package:al_husna/domain/usecases/fetch_news_use_case.dart';
import 'package:al_husna/presentation/controllers/news/news_controller.dart';

class NewsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FetchNewsUseCase(Get.find<ArticleRepositoryIml>()));
    Get.lazyPut(() => NewsController(Get.find()));
  }
}
