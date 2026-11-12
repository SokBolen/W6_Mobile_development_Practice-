import 'package:flutter/material.dart';

// EX 2 – The buttons (handout page: EX 2)
// A StatelessWidget called CustomButton. Use one enum for the button type
// and one enum for the icon position.
enum ButtonType {
  primary,
  secondary,
  disabled,
}

enum IconPosition {
  left,
  right,
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Custom buttons'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 20,
            children: const [
              CustomButton(
                label: 'Submit', 
                icon: Icons.check,
              ),

              CustomButton(
                label: 'Time', 
                icon: Icons.access_time,
                buttonType: ButtonType.secondary,
                iconPosition: IconPosition.right,
              ),

              CustomButton(
                label: 'Account', 
                icon: Icons.account_tree,
                buttonType: ButtonType.disabled,
                iconPosition: IconPosition.right,
              ),

            ],
          ),
        ), // YOUR CODE
      ),
    ),
  );
}

// Reuseable Button
class CustomButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final IconPosition iconPosition;
  final ButtonType buttonType;

  const CustomButton({
    super.key,
    required this.label,
    required this.icon,
    this.iconPosition = IconPosition.left,
    this.buttonType = ButtonType.primary,
  });

  @override 
  Widget build(BuildContext context) {

    final Color backgroundColor = switch (buttonType) {
      ButtonType.primary=> Colors.blue,
      ButtonType.secondary => Colors.green,
      ButtonType.disabled => Colors.grey,
    };

    return Container(
      padding: EdgeInsets.all(20),
      
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(20),

      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (iconPosition == IconPosition.left)
              Icon(icon, color: Colors.blueGrey),
            
            
            Text(
              label,
              style: const TextStyle(
                color: Colors.blueGrey,
                fontSize: 16,
              ),
            ),

            if(iconPosition == IconPosition.right)
              Icon(icon, color: Colors.blueGrey),
            
            
          ],
        ),
      ),
    );
  }
}