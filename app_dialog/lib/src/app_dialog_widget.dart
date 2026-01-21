import 'package:flutter/material.dart';

class AppDialogWidget extends StatelessWidget {
  const AppDialogWidget({
    super.key,
    required this.backgroundColor,
    required this.surfaceTintColor,
    this.widget,
  });

  final Color backgroundColor;
  final Color surfaceTintColor;
  final Widget? widget;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: backgroundColor,
      surfaceTintColor: surfaceTintColor,
      child:
          widget ??
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: AlignmentGeometry.topRight,
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.close),
                  ),
                ),
                Center(child: Text('Your Tittle???')),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: .center,
                  children: [
                    ElevatedButton(onPressed: () {}, child: Text('Button1')),
                    SizedBox(width: 10),
                    ElevatedButton(onPressed: () {}, child: Text('Button2')),
                  ],
                ),
              ],
            ),
          ),
    );
  }
}
