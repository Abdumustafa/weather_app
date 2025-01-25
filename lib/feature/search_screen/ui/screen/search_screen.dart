import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.white,
            ),
            onPressed: () {
              context.pop("/");
            },
          ),
          title: Text(
            "Search a city",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Search",
                labelStyle: TextStyle(
                  color: Colors.amber,
                ),
                isDense: true,
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 30.w, vertical: 18.h),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.amber,
                      width: 1.3,
                    ),
                    borderRadius: BorderRadius.circular(16.0)),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.black,
                    width: 1.3,
                  ),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.red,
                    width: 1.3,
                  ),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: Colors.red,
                    width: 1.3,
                  ),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                hintText: "Enter caty name",
                hintStyle:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w300),
                suffixIcon: Icon(Icons.search),
              ),
              obscureText: false,
              style: TextStyle(color: Colors.black),
            ),
          ),
        ));
  }
}
