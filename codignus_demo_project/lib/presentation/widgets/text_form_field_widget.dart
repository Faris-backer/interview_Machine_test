import 'package:flutter/material.dart';

class TextFormFieledWidget extends StatefulWidget {
  final double screenHeight;
  final String labelText;
  final TextEditingController textEditingController;
  final TextInputType keybordType;

  const TextFormFieledWidget({
    Key? key,
    required this.screenHeight,
    required this.labelText,
    required this.textEditingController,
    required this.keybordType,
  }) : super(key: key);

  @override
  State<TextFormFieledWidget> createState() => _TextFormFieledWidgetState();
}

class _TextFormFieledWidgetState extends State<TextFormFieledWidget> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 8),
            child: Row(
              children: [
                Text(
                  widget.labelText,
                  style: const TextStyle(color: Colors.white),
                ),
                const Text(
                  '*',
                  style: TextStyle(color: Colors.red),
                )
              ],
            ),
          ),
          Container(
            height: widget.screenHeight * 0.079,
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                ),
                suffixIcon: widget.keybordType == TextInputType.visiblePassword
                    ? IconButton(
                        icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off,
                          color: Colors.grey,
                        ),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        })
                    : null,
                filled: true,
                fillColor: Colors.grey[800],
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Colors.grey,
                  ),
                ),
              ),
              validator: (value) {
                if (widget.keybordType == TextInputType.emailAddress) {
                  if (value!.isEmpty || !value.contains('@')) {
                    return 'Please Enter  a valid Email address';
                  }
                  return null;
                } else if (widget.keybordType == TextInputType.emailAddress) {
                  if (value!.isEmpty || value.length < 4) {
                    return 'please enter a valid name or atleat 4 character length';
                  }
                  return null;
                }
              },
              obscureText: _isObscure,
              cursorColor: Colors.grey,
              style: const TextStyle(color: Colors.grey),
              keyboardType: widget.keybordType,
            ),
          ),
        ],
      ),
    );
  }
}
