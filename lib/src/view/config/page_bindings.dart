import 'package:formulastudent/src/view/pages/about/about_view_controller.dart';
import 'package:formulastudent/src/view/pages/chat/chat_view_controller.dart';
import 'package:formulastudent/src/view/pages/faq/faq_view_controller.dart';
import 'package:formulastudent/src/view/pages/myteam/my_team_view_controller.dart';
import 'package:formulastudent/src/view/pages/teams/teams_view_controller.dart';
import 'package:formulastudent/src/view/pages/teamsdetail/teams_details_view_controller.dart';
import 'package:formulastudent/src/view/pages/timeline/timeline_view_controller.dart';
import 'package:get/get.dart';

class TimelinePageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<TimelineViewController>(TimelineViewController());
  }
}

class ChatPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<ChatViewController>(ChatViewController());
  }
}

class FaqPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<FaqViewController>(FaqViewController());
  }
}

class MyTeamPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<MyTeamViewController>(MyTeamViewController());
  }
}

class TeamsPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<TeamsViewController>(TeamsViewController());
  }
}

class AboutPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<AboutViewController>(AboutViewController());
  }
}

class TeamsDetailPageBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<TeamsDetailViewController>(TeamsDetailViewController());
  }
}
