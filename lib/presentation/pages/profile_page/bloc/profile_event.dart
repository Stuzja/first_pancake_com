part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.started(int? userId) = Started;
  const factory ProfileEvent.clickedSubscribeButton(int userId) =
      ClickedSubscribeButton;
  const factory ProfileEvent.signOut() = SignOut;
  const factory ProfileEvent.addProfileImage(
    int? userId,
    String imageToBase,
  ) = AddProfileImage;
  const factory ProfileEvent.deleteProfileImage(
    int? userId,
  ) = DeleteProfileImage;
}
