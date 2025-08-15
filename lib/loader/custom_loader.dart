import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class CustomLoader extends StatefulWidget {
  const CustomLoader({super.key, this.size = 40, this.color});
  final double? size;
  final Color? color;

  @override
  State<CustomLoader> createState() => _CustomLoaderState();
}

class _CustomLoaderState extends State<CustomLoader> {
  @override
  Widget build(BuildContext context) {
    return SpinKitCircle(
      size: widget.size ?? 40,
      color: widget.color ?? Colors.blue,
    );
  }
}
