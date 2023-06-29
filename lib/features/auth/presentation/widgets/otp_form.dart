import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpForm extends StatefulWidget {
  const OtpForm({Key? key}) : super(key: key);

  @override
  State<OtpForm> createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  List<TextEditingController> otpController = [];
  List<FocusNode> focusNodes = [];
  int numberOfFields = 4;

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < numberOfFields; i++) {
      otpController.add(TextEditingController());
      focusNodes.add(FocusNode());
    }
  }

  @override
  void dispose() {
    for (var otpNode in otpController) {
      otpNode.dispose();
    }
    for (var node in focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(
            numberOfFields,
            (index) => SizedBox(
              width: 50,
              child: TextField(
                controller: otpController[index],
                focusNode: focusNodes[index],
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                maxLength: 1,
                onChanged: (value) {
                  if (value.isNotEmpty) {
                    if (index < numberOfFields - 1) {
                      focusNodes[index].unfocus();
                      FocusScope.of(context)
                          .requestFocus(focusNodes[index + 1]);
                    } else {
                      focusNodes[index].unfocus();
                    }
                  } else {
                    if (index > 0) {
                      focusNodes[index].unfocus();
                      FocusScope.of(context)
                          .requestFocus(focusNodes[index - 1]);
                    }
                  }
                },
                decoration: InputDecoration(
                  counterText: '',
                  filled: true,
                  fillColor: Colors.yellow,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 25,),
        MaterialButton(
          color: Colors.yellow,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          onPressed: () {},
          child: Text(
            'Submit',
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}
