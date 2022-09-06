import 'package:flutter/material.dart';

class WriteMeField extends StatelessWidget {
  const WriteMeField({
    Key? key,
    required this.expands,
    required this.label,
    required this.hint,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;
  final String label, hint;
  final bool expands;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
      child: TextField(
        controller: controller,
        minLines: expands ? null : 1,
        maxLines: expands ? null : 1,
        expands: expands,
        style: TextStyle(
          color: Theme.of(context).colorScheme.secondary,
          fontSize: 24,
        ),
        cursorColor: Theme.of(context).colorScheme.secondary,
        textAlignVertical: TextAlignVertical.top,
        decoration: InputDecoration(
          hintText: hint,
          labelText: label,
          hintStyle: TextStyle(
            height: 1.5,
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.75),
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelStyle: TextStyle(
            color: Theme.of(context).colorScheme.secondary,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.secondary,
              width: 2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.secondary,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
