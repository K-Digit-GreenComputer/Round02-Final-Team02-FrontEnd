import 'package:flutter/material.dart';
import 'package:sporting_app/view/components/my_button.dart';
import 'package:sporting_app/view/pages/dummy/honorary/honorary.dart';
import 'package:sporting_app/view/pages/dummy/player/player.dart';
import 'package:sporting_app/view/pages/dummy/recruitment/recruitment.dart';
import 'package:sporting_app/view/pages/dummy/stadium/stadium.dart';

class MainEventCategories extends StatelessWidget {
  const MainEventCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildListDelegate([
        _buildIcon(context, "assets/images/icons/tr.png", "명예의전당"),
        _buildIcon2(context, "assets/images/icons/st.png", "이달의 구장"),
        _buildIcon3(context, "assets/images/logo/sporting.png", "회사소개"),
        _buildIcon4(context, "assets/images/icons/ut.png", "슈퍼플레이"),
      ]),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 0,
        crossAxisSpacing: 15,
      ),
    );
  }

  Column _buildIcon(BuildContext context,String image, String sportName) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MyButton(
            funButton: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Honorarypage()));
            },
            image: image,
          ),
          Text(
            sportName,
            style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          ),
        ],
      );
  }
  Column _buildIcon2(BuildContext context, String image, String sportName) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        MyButton(
          funButton: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (_)=> Recruitment()));
          },
          image: image,
        ),
        Text(
          sportName,
          style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
  Column _buildIcon3(BuildContext context, String image, String sportName) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        MyButton(
          funButton: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (_)=> stardium()));
          },

          image: image,
        ),
        Text(
          sportName,
          style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
  Column _buildIcon4(BuildContext context, String image, String sportName) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        MyButton(
          funButton: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (_)=> PlayerMovie()));
          },
          image: image,
        ),
        Text(
          sportName,
          style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
