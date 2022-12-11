part of 'login_imports.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width / 3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const VxTextField(
              hint: "Email",
              labelText: "Email",
              borderType: VxTextFieldBorderType.roundLine,
            ),
            40.heightBox,
            const VxTextField(
              hint: "Password",
              labelText: "Password",
              isPassword: true,
              borderType: VxTextFieldBorderType.roundLine,
            ),
            40.heightBox,
            SizedBox(
              width: 200,
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                child: "Login".toUpperCase().text.bold.make(),
              ),
            ),
            40.heightBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Registration(),
                    ),
                  ),
                  child: "Register".text.make(),
                ),
                "Forgot Password".text.make(),
              ],
            )
          ],
        ),
      ).centered(),
    );
  }
}
