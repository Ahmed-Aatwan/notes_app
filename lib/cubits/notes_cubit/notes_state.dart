part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

final class NotesLoading extends NotesState {}

final class NotesLoadedSuccessfully extends NotesState {
 final List<NoteModel> notesList;

  NotesLoadedSuccessfully({required this.notesList});
}

final class NotesLoadingFailed extends NotesState {
  final String errMsg;

  NotesLoadingFailed({required this.errMsg});
}
