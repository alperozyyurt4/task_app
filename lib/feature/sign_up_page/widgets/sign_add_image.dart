part of '../sign_up_view.dart';

class _AddImage extends StatelessWidget {
  const _AddImage({super.key, required this.profilePicSize, required this.camreIconSize, required onTap})
      : _onTap = onTap;

  final double profilePicSize;
  final double camreIconSize;
  final VoidCallback _onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: profilePicSize,
          height: profilePicSize,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: SignUpeys.appBlueColor, width: 1),
          ),
          child: Icon(
            color: SignUpeys.appBlueColor,
            SignUpeys.personIcon,
            size: profilePicSize * 0.5,
          ),
        ),
        Positioned(
          right: 0,
          child: GestureDetector(
            onTap: _onTap,
            child: Container(
              width: camreIconSize,
              height: camreIconSize,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: SignUpeys.appBlueColor, width: 1),
              ),
              child: Icon(
                SignUpeys.cameraIcon,
                color: SignUpeys.appBlueColor,
                size: camreIconSize * 0.6,
              ),
            ),
          ),
        )
      ],
    );
  }
}
