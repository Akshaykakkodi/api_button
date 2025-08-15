PrimaryButton
A customizable, modern Flutter button widget with a built-in loading state and flexible styling, ideal for consistent app UI.

Features
Customizable button appearance with color, height, width, and rounded corners.

Loading indicator (uses your CustomLoader widget).

Disables callback when loading.

Simple API for fast integration.

Installation
Add to your pubspec.yaml:

dependencies:
  api_button: ^1.0.0
Then run:


flutter pub get
Usage
Import the package:

dart
import 'package:api_button/loader/custom_loader.dart';
import 'package:api_button/primary_button.dart';

Use the PrimaryButton widget:

dart
PrimaryButton(
  title: 'Submit',
  color: Colors.blue,        // Optional
  height: 50,                // Optional
  width: 200,                // Optional
  loading: isLoading,        // bool: show loading indicator
  onPressed: () {
    // Your logic here
  },
)

Example
dart
class ExampleScreen extends StatefulWidget {
  @override
  State<ExampleScreen> createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen> {
  bool isLoading = false;

  void handleSubmit() {
    setState(() => isLoading = true);
    // Simulate some work
    Future.delayed(Duration(seconds: 2), () {
      setState(() => isLoading = false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PrimaryButton(
          title: 'Submit',
          loading: isLoading,
          onPressed: handleSubmit,
        ),
      ),
    );
  }
}


Parameters
Parameter	Type	Description
title	String	Text label of the button
onPressed	VoidCallback	Callback when the button is pressed
loading	bool	Show loading animation and disable tap
color	Color	Background color for the button (optional)
height	double	Height of the button (optional, default: 59)
width	double	Width of the button (optional, default: full)
License
 MIT

Contributing
Pull requests are welcome. For ideas, issues, or bugs, open an issue on GitHub.

