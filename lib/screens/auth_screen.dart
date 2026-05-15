import 'package:flutter/material.dart';
import '../widgets/custom_text_field.dart';
import 'main_screen.dart';

class AuthScreen extends StatefulWidget {
  final bool isLogin;
  const AuthScreen({super.key, required this.isLogin});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  late bool _isLogin;

  @override
  void initState() {
    super.initState();
    _isLogin = widget.isLogin;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(_isLogin ? "مرحباً بعودتك!" : "إنشاء حساب",
                style:
                    const TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(_isLogin ? "سجل دخولك للمتابعة" : "املأ بياناتك للبدء",
                style: TextStyle(fontSize: 16, color: Colors.grey[500])),
            const SizedBox(height: 40),
            if (!_isLogin) ...[
              const CustomTextField(
                  label: "الاسم الكامل", icon: Icons.person_outline),
              const SizedBox(height: 16),
            ],
            const CustomTextField(
                label: "البريد الإلكتروني", icon: Icons.email_outlined),
            const SizedBox(height: 16),
            const CustomTextField(
                label: "كلمة المرور",
                icon: Icons.lock_outline,
                isPassword: true),
            const SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                onPressed: () => Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => const MainScreen()),
                    (route) => false),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[600],
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  elevation: 5,
                  shadowColor: const Color.fromRGBO(33, 150, 243, 0.4),
                ),
                child: Text(_isLogin ? "تسجيل الدخول" : "إنشاء حساب",
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold)),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(_isLogin ? "ليس لديك حساب؟ " : "لديك حساب بالفعل؟ ",
                    style: TextStyle(color: Colors.grey[600])),
                GestureDetector(
                  onTap: () => setState(() => _isLogin = !_isLogin),
                  child: Text(_isLogin ? "أنشئ حساباً" : "سجل الدخول",
                      style: TextStyle(
                          color: Colors.blue[600],
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
