import 'package:flutter/material.dart';
import 'package:formulastudent/src/view/pages/about/about_page.dart';
import 'package:formulastudent/src/view/pages/chat/chat_page.dart';
import 'package:formulastudent/src/view/pages/faq/faq_page.dart';
import 'package:formulastudent/src/view/pages/myteam/my_team_page.dart';
import 'package:formulastudent/src/view/pages/teams/teams_page.dart';
import 'package:formulastudent/src/view/pages/timeline/timeline_page.dart';
import 'package:get/get.dart';


class DrawerWidget extends StatelessWidget {
  DrawerWidget(this.currentPage);
  final StatelessWidget currentPage;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text("jhondoe90@mail.com"),
            accountName: Text("John Doe"),
            currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://randomuser.me/api/portraits/men/46.jpg")),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/drawer_background.png'),
                    fit: BoxFit.cover)),
          ),
          createTimelineOption(currentPage, context),
          createChatOption(currentPage, context),
          Divider(),
          createTeamsOption(currentPage, context),
          createMyTeamOption(currentPage, context),
          Divider(),
          createFaqOption(currentPage, context),
          createLogoutOption(currentPage, context)
        ],
      ),
    );
  }

  Widget createTimelineOption(Widget currentPage, BuildContext context){
    return Container(
      color: currentPage is TimelinePage ? Colors.red[50] : Colors.white10,
      child: ListTile(
        leading: Icon(Icons.calendar_today, color: Colors.black54),
        title: Text('Timeline'),
        dense: true,
        onTap: () {
          Navigator.pop(context, true);
          if(!(currentPage is TimelinePage)){
            Get.back();
            Get.offNamed("/timeline");
          }
        },
      ),
    );
  }

  Widget createTeamsOption(Widget currentPage, BuildContext context){
    return Container(
      color: currentPage is TeamsPage ? Colors.red[50] : Colors.white10,
      child: ListTile(
        leading: Icon(Icons.calendar_today, color: Colors.black54),
        title: Text('Teams'),
        dense: true,
        onTap: () {
          if(!(currentPage is TeamsPage)){
            Get.back();
            Get.offNamed("/teams");
          }
        },
      ),
    );
  }

  Widget createMyTeamOption(Widget currentPage, BuildContext context){
    return Container(
      color: currentPage is MyTeamPage ? Colors.red[50] : Colors.white10,
      child: ListTile(
        leading: Icon(Icons.car_rental_outlined, color: Colors.black54),
        title: Text('My team'),
        dense: true,
        onTap: () {
          if(!(currentPage is MyTeamPage)){
            Get.back();
            Get.offNamed("/myTeam");
          }
        },
      ),
    );
  }

  Widget createFaqOption(Widget currentPage, BuildContext context){
    return Container(
      color: currentPage is FaqPage ? Colors.red[50] : Colors.white10,
      child: ListTile(
        leading: Icon(Icons.question_answer_outlined, color: Colors.black54),
        title: Text('F.A.Q'),
        dense: true,
        onTap: () {
          Navigator.pop(context, true);
          if(!(currentPage is FaqPage)){
            Get.back();
            Get.offNamed("/faq");
          }
        },
      ),
    );
  }

  Widget createChatOption(Widget currentPage, BuildContext context){
    return Container(
      color: currentPage is ChatPage ? Colors.red[50] : Colors.white10,
      child: ListTile(
        leading: Icon(Icons.question_answer_outlined, color: Colors.black54),
        title: Text('Chat'),
        dense: true,
        onTap: () {
          Navigator.pop(context, true);
          if(!(currentPage is ChatPage)){
            Get.back();
            Get.offNamed("/chat");
          }
        },
      ),
    );
  }

  Widget createAboutOption(Widget currentPage, BuildContext context){
    return Container(
      color: currentPage is AboutPage ? Colors.red[50] : Colors.white10,
      child: ListTile(
        leading: Icon(Icons.info_outline, color: Colors.black54),
        title: Text('About'),
        dense: true,
        onTap: () {
          Navigator.pop(context, true);
          if(!(currentPage is AboutPage)){
            Get.back();
            Get.offNamed("/about");
          }
        },
      ),
    );
  }

  Widget createLogoutOption(Widget currentPage, BuildContext context){
    return Container(
      color: Colors.white10,
      child: ListTile(
        leading: Icon(Icons.logout, color: Colors.black54),
        title: Text('Logout'),
        dense: true,
        onTap: () {
          Get.back();
        },
      ),
    );
  }
}
