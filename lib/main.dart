import 'package:first_pancake_com/di/locator.dart';
import 'package:first_pancake_com/domain/repositories/snackbar_manager/snackbar_manager.dart';
import 'package:first_pancake_com/navigation/auto_router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final autoRouter = AutoRouter();

  @override
  void initState() {
    getIt.registerSingleton<AutoRouter>(autoRouter);
    // getIt<SnackBarManager>().controller.stream.listen((event) {
    //   snackbarKey.currentState?.removeCurrentSnackBar();
    //   snackbarKey.currentState?.showSnackBar(
    //     SnackBars().snackBar(
    //       title: event.title,
    //     ),
    //   );
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411, 823),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return DefaultTextHeightBehavior(
          textHeightBehavior: const TextHeightBehavior(
            leadingDistribution: TextLeadingDistribution.even,
          ),
          child: MaterialApp.router(
            title: 'First Pancake.com',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              fontFamily: "Montserrat",
            ),
            routerDelegate: autoRouter.delegate(),
            routeInformationParser: autoRouter.defaultRouteParser(),
          ),
        );
      },
    );
  }
}
