import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    this.padding = const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
    this.maxlines = 1,
    this.onChanged,
    this.onSaved,
  });

  final String hintText;
  final int maxlines;
  final EdgeInsets padding;
  final void Function(String?)? onChanged;
  final void Function(String?)? onSaved;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is required";
        } else {
          return null;
        }
      },
      textInputAction: TextInputAction.search,
      onSaved: widget.onSaved,
      onChanged: widget.onChanged,
      cursorColor: Colors.black,
      autofocus: false,
      textAlign: TextAlign.start,
      maxLines: widget.maxlines,
      style: const TextStyle(fontSize: 22),
      decoration: InputDecoration(
        suffix: SizedBox(
          height: 10,
          child: IconButton(
              onPressed: () {
                setState(() {
                  controller.clear();       
                });
              },
              icon: const Icon(FontAwesomeIcons.circleXmark)),
        ),
        filled: true,
        fillColor: Colors.white,
        contentPadding: widget.padding,
        hintText: widget.hintText,
        hintStyle: const TextStyle(fontSize: 22),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
        border: buildBorder(),
      ),
    );
  }
}

OutlineInputBorder buildBorder([color]) {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: BorderSide(color: color ?? Colors.white));
}
