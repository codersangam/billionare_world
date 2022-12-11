part of 'registration_imports.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
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
              hint: "Name",
              labelText: "Name",
              borderType: VxTextFieldBorderType.roundLine,
            ),
            40.heightBox,
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
            const VxTextField(
              hint: "Confirm Password",
              labelText: "Confirm Password",
              isPassword: true,
              borderType: VxTextFieldBorderType.roundLine,
            ),
            40.heightBox,
            const VxTextField(
              hint: "Referral Code",
              labelText: "Referral Code",
              borderType: VxTextFieldBorderType.roundLine,
            ),
            40.heightBox,
            SizedBox(
              width: 200,
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                child: "Register".toUpperCase().text.bold.make(),
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
                      builder: (context) => const Login(),
                    ),
                  ),
                  child: "Login".text.make(),
                ),
              ],
            )
          ],
        ),
      ).centered(),
    );
  }
}
