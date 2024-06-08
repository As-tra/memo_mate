import 'package:get_it/get_it.dart';
import 'package:memo_mate/features/home/data/repos/home_repo_impl.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl());
}
