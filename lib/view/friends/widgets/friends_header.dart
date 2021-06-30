import 'package:chat/view/friends/widgets/avatar_button.dart';
import 'package:chat/view/friends/widgets/back_icon.dart';
import 'package:chat/view/widgets/popup_menu.dart';
import 'package:chat/view/friends/widgets/search_widget.dart';
import 'package:chat/view/utils/constants.dart';
import 'package:chat/view/utils/device_config.dart';
import 'package:flutter/material.dart';

class FriendsHeader extends StatelessWidget {
  const FriendsHeader({
    Key key,
    @required this.editForm,
    @required this.onBackPressed,
    @required this.onAvatarPressed,
  }) : super(key: key);

  final bool editForm;
  final Function onBackPressed;
  final Function onAvatarPressed;

  @override
  Widget build(BuildContext context) {
    final deviceData = DeviceData.init(context);
    return Padding(
      padding: EdgeInsets.only(
        top: deviceData.screenHeight * 0.05,
        left: deviceData.screenWidth * 0.06,
        right: deviceData.screenWidth * 0.06,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image(
                image: AssetImage('assets/images/chatlogo.png'),
                height: deviceData.screenHeight * 0.06,
                
              ),
              AvatarButton(
                onPressed: () =>
                    onAvatarPressed != null ? onAvatarPressed() : null,
              ),
            ],
          ),
          SizedBox(height: deviceData.screenHeight * 0.02),
          Container(
            height: deviceData.screenHeight * 0.06,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                AnimatedSwitcher(
                  duration: Duration(milliseconds: 300),
                  child: editForm
                      ? BackIcon(
                          onPressed: () =>
                              onBackPressed != null ? onBackPressed() : null)
                      : SearchWidget(),
                ),
                PopUpMenu(),
              ],
            ),
          ),
          SizedBox(height: deviceData.screenHeight * 0.015),
        ],
      ),
    );
  }
}
