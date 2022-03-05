library flipper_dashboard;

import 'package:flipper_models/models/models.dart';
import 'package:flipper_rw/gate.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/scheduler.dart';
import 'package:go_router/go_router.dart';
import 'package:stacked/stacked.dart';
import 'package:provider/provider.dart';

class StartUpView extends StatelessWidget {
  const StartUpView({Key? key, this.invokeLogin}) : super(key: key);
  final bool? invokeLogin;
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartUpViewModel>.reactive(
      fireOnModelReadyOnce: true,
      onModelReady: (model) => SchedulerBinding.instance?.addPostFrameCallback(
        (timeStamp) {
          model.runStartupLogic(
            invokeLogin: invokeLogin ?? false,
            loginInfo: loginInfo,
            errorCallback: (e) {
              if (e == 1) {
                showSnackbar(
                  context,
                  const Snackbar(
                    content:
                        Text('Error happened in our end, please try again!'),
                  ),
                );
                GoRouter.of(context).go("/login");
              }
            },
          );
        },
      ),
      viewModelBuilder: () => StartUpViewModel(),
      builder: (context, model, child) {
        return ChangeNotifierProvider<LoginInfo>.value(
          value: loginInfo,
          child: Container(
            color: Colors.white,
            child: const Center(
              child: ProgressRing(),
            ),
          ),
        );
      },
    );
  }
}
