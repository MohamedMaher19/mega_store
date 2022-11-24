import 'package:flutter/material.dart';


class CustomSearchBar extends StatelessWidget {
  CustomSearchBar({Key? key}) : super(key: key);

  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  TextField(

          controller: searchController,
          style: TextStyle(
            color: Colors.black,
          ),
          cursorColor: Colors.black,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            fillColor: Colors.white,
            focusColor: Colors.red,
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            hintText: 'Search For Products ...',
            hintStyle: TextStyle(
              color: Colors.black45,
              fontWeight: FontWeight.w500,
            ),
            filled: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(15),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(15),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        );
  }
}
