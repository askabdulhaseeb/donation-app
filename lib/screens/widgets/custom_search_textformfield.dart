import 'package:flutter/material.dart';

class CustomSearchTextFormField extends StatefulWidget {
  const CustomSearchTextFormField({Key? key, required this.search})
      : super(key: key);
  final TextEditingController search;
  @override
  _CustomSearchTextFormFieldState createState() =>
      _CustomSearchTextFormFieldState();
}

class _CustomSearchTextFormFieldState extends State<CustomSearchTextFormField> {
  void _onListener() => setState(() {});
  @override
  void initState() {
    widget.search.addListener(_onListener);
    super.initState();
  }

  @override
  void dispose() {
    widget.search.removeListener(_onListener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width * 0.74,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: widget.search,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          hintText: 'Search for keyword',
          suffixIcon: Icon(
            Icons.search,
            color: Colors.purple,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
