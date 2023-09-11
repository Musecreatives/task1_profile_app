# profile_app
Step 1: Create a new Flutter project.
 flutter create --platforms=android,ios profile_screen
Creating project webview_in_flutter...
Running "flutter pub get" in profile_screen...               1,728ms
Wrote 73 files.

All done!
In order to run your application, type:

  $ cd profile_screen
  $ flutter run

Your application code is in profile_screen/lib/main.dart.

Step2: Add the following dependencies to your project:
  webview_flutter

Step 3: Create User Interface (Profile Screen)

Step 4: Create a ElevatedButton widget.

Step 5: Create a web_view_container widget and initialize the controller.

Step 6: Set the child property of the ElevatedButton widget to the text or image you want to use for the button.

Step 7: Set the onPressed property of the ElevatedButton widget to a function that calls the loadRequest Uri.parse() method of the webview_flutter package (i.e. WebViewContainer widget).
