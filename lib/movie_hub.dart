import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_component_playground/localization/generated/l10n.dart';
import 'package:flutter_component_playground/localization/locale_cubit.dart';
import 'package:flutter_component_playground/navigation/app_navigation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class MovieHub extends StatelessWidget {
  const MovieHub({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LocaleCubit>(
          create: (_) => LocaleCubit(),
        ),
      ],
      child: BlocBuilder<LocaleCubit, Locale>(
        builder: (context, locale) {
          return ScreenUtilInit(
            designSize: const Size(375, 812),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (_, child) {
              return MaterialApp.router(
                title: 'Movie Hub',
                debugShowCheckedModeBanner: false,
                theme: ThemeData(
                  colorScheme:
                      ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                ),
                routerConfig: router,
                locale: locale,
                supportedLocales: LocalizedStrings.delegate.supportedLocales,
                localizationsDelegates: const [
                  LocalizedStrings.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
              );
            },
          );
        },
      ),
    );
  }
}
