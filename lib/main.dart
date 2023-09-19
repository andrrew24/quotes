import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:qoutes/core/utils/constants/constants.dart';
import 'package:qoutes/core/utils/services/service_locator.dart';
import 'package:qoutes/core/utils/widgets/simble_bloc_observer.dart';
import 'package:qoutes/core/utils/routes/app_router.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kQuotesBox);
  serviceLocatorSetup();

  Bloc.observer = SimpleBlocObserver();
  runApp(const QuotesApp());
}

class QuotesApp extends StatelessWidget {
  const QuotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
          textTheme: GoogleFonts.gemunuLibreTextTheme(
        Theme.of(context).textTheme,
      )),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
