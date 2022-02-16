part of 'search_bloc.dart';

@immutable
abstract class SearchEvent {}

class GetAllSearches extends SearchEvent {
  final String searchQuery;

  GetAllSearches({
    required this.searchQuery,
  });
}
