import 'package:api_button/loader/custom_loader.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.loading=false,
    this.color,
    this.height,
    this.width,
  });
  final String title;
  final VoidCallback onPressed;
  final bool? loading;
  final Color? color;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: () {
      if(loading!=true){
        onPressed();
      }
      
      },
      padding: EdgeInsets.zero,
      child: Container(
        width: width ?? double.infinity,
        height: height ?? 59,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color:color?.withOpacity(0.1)?? Colors.blue.withOpacity(0.1),
                blurRadius: 13,
                offset: const Offset(0, 13))
          ],
          
          color: color ?? Colors.blue,
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Center(
          child: loading == true
              ? SizedBox(height: 50, child: const CustomLoader(color: Colors.white,))
              : Text(
                  title,
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),
                ),
        ),
      ),
    );
  }
}
