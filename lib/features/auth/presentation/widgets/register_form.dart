import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          keyboardType: TextInputType.number,
          maxLength: 12,
          onChanged: (_) {},
          decoration: InputDecoration(
            counterText: '',
            hintText: 'phone number',
            hintStyle: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w600
            ),
            filled: true,
            fillColor: Colors.yellow,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextField(
          keyboardType: TextInputType.name,
          onChanged: (_) {},
          decoration: InputDecoration(
            counterText: '',
            hintText: 'username',
            hintStyle: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w600
            ),
            filled: true,
            fillColor: Colors.yellow,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              child: TextField(
                keyboardType: TextInputType.number,
                onChanged: (_) {},
                decoration: InputDecoration(
                  counterText: '',
                  hintText: 'Enter OTP Code',
                  hintStyle: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600
                  ),
                  filled: true,
                  fillColor: Colors.yellow,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            GestureDetector(
              child: Container(
                height: 60,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.yellow,
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Get Code',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w600
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 20,),
        MaterialButton(
          color: Colors.yellow,
          height: 50,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          onPressed: () {},
          child: Text(
            'Submit',
            style: GoogleFonts.poppins(
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.w500
            ),
          ),
        ),
      ],
    );
  }
}
