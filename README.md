## Flutter Project with go_router_builder, Deep Linking, and Feature-Based Organization

This project demonstrates the use of the `go_router_builder` package for route management, deep linking, and a feature-based organizational approach.

### Route Management with go_router_builder:

1. **Add Dependencies**: Include the following dependencies in your `pubspec.yaml` file:

   - For `go_router`, run:
     ```bash
     flutter pub add go_router
     ```
   - For `go_router_builder`, run:
     ```bash
     dart pub add go_router_builder
     ```
   - For `build_runner`, run:
     ```bash
     dart pub add --dev build_runner
     ```

2. **Install Dependencies**: Execute the following command to install the dependencies:

   ```bash
    flutter pub get
   ```

3. **Define Routes**: Create a routes.dart file to define the routes for the project. For each screen, create a class that extends GoRouteData and annotate top-level routes using @TypedGoRoute(). For example:
   @TypedGoRoute<HomeRoute>(
   path: '/',
   routes: [
   TypedGoRoute<PageOneRoute>(path: 'pageOne'),
   // Additional routes...
   ],
   )

4. After defining the routes, generate route list and extensions:

- Add a generated file part to your current file: `part '<current-file>.g.dart';`
- Run the build_runner command to generate the necessary files => `dart run build_runner build --delete-conflicting-outputs`
- You can now use the generated $appRoutes in the GoRouter routes in main.dart.

5. also now you can Navigate to another screen using => `routeName().go(context)`, `routeName().push(context)`, ...etc

## DeepLinking

1. **Domain Setup**: To implement deep linking, you need a domain. We will create one using GitHub Pages:

- Create a new repository.
- Clone the repository to your desired project folder
  ```bash
    cd <your-folder>
    git clone https://github.com/username/username.github.io
  ```
- Navigate to the project folder and create an index.html file
  `bash 
 cd username.github.io
 echo "Hello World" > index.html
`
- Add, commit, and push your changes to GitHub.

2. **Android Manifest Configuration**: Navigate to android/app/src/main/AndroidManifest.xml and add the following <intent-filter> inside the <activity> tag of MainActivity:
   <intent-filter android:autoVerify="true">
   <action android:name="android.intent.action.VIEW" />
   <category android:name="android.intent.category.DEFAULT" />
   <category android:name="android.intent.category.BROWSABLE" />
   <data android:scheme="http" android:host="your-web-domain, e.g., username.github.io" />
   <data android:scheme="https" />
   </intent-filter>
3. In the project root directory, create a .well-known folder and inside it, create assetlinks.json with the following content, and Replace package_name and sha256_cert_fingerprints with your app's specific details:

   ```json
   [
     {
       "relation": ["delegate_permission/common.handle_all_urls"],
       "target": {
         "namespace": "android_app",
         "package_name": "com.example",
         "sha256_cert_fingerprints": ["sha256_cert_fingerprints"]
       }
     }
   ]
   ```

4. You are now set up for deep linking!

## Testing Deep Linking

To test the deep linking functionality, you can use the following URLs:

- For Home: https://hananaldosari.github.io/
- For Page one: https://hananaldosari.github.io/pageOne
- For Page two: https://hananaldosari.github.io/pageTwo
- For Settings: https://hananaldosari.github.io/settings
- For Account: https://hananaldosari.github.io/settings/account
  **Important Note**
  If deep linking is not working as expected, please ensure that you have added and enabled supported links in your app settings.

## Project Organization

To maintain a clean structure, I follow a feature-based organization approach, centralizing navigation for better management
