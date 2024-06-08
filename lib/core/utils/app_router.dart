import 'package:go_router/go_router.dart';
import 'package:memo_mate/features/addNote/presentation/views/add_note_view.dart';
import 'package:memo_mate/features/home/presentation/views/home_view.dart';

abstract class AppRouter {
  static const kHomeView = '/home';
  static const kAddNoteView = '/addNoteView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kAddNoteView,
        builder: (context, state) => const AddNoteView(),
      )
    ],
  );
}
