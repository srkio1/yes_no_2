import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_2/config/theme/app_theme.dart';
import 'package:yes_no_2/presentation/providers/chat_providers.dart';
import 'package:yes_no_2/presentation/screens/chat/chat_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      
      providers: [ChangeNotifierProvider(create: (_) => ChatProvider(),) ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectColor: 1).theme(),
        title: 'Material App',
        home: const ChatScreen(),
      ),
    );
  }
}
