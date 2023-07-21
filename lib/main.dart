import 'package:appshopdemo/app/binding/root_binding.dart';
import 'package:appshopdemo/app/routes/route.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "AppShop",
      theme: ThemeData(useMaterial3: true),
      initialBinding: RootBinding(),
      getPages: myroutes,
      initialRoute: '/mobileview',
    );
  }
}


/* BLoC Structure

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(useMaterial3: true),
      home: RepositoryProvider(
        create: (context) => ShopRepository(service: ShopService()),
        child: BlocProvider(
          create: (context) =>
              CategoryBarBloc(shopRepository: context.read<ShopRepository>())
                ..add(GetDummyCategory()),
          child: HomePage(),
        ),
      ),
    );
  }
}*/
