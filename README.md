# CustomFlutter -> Components

### Folder with modified components: `lib/modules` 📂

<details>
<summary style="font-size: 22px">Basic reminders 👈</summary>
<br>

> Avoid modifying anything in this directory: **`android\app\src\main\res`**

### Widget Control

- Using **StateFulWidget**  
> StateFul is a widget designed for structures that will receive updates.
```dart
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
```
# 
- Using **StateLessWidget**
> StateLess is a widget designed for structures that remain constant.
```dart
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Login(),
    );
  }
}
```

## Package Manager

The `pubspec.yaml` file is essential for a **Flutter** project. It specifies the project's configurations, such as **version**, **packages**, and other formatting settings.
```yaml
name: project_name
version: 1.0.0

dependencies:
  flutter:
    sdk: flutter
  http: ^0.13.3

flutter:
  assets:
    - assets/images/
  fonts:
    - family: Roboto
      fonts:
        - asset: fonts/Roboto-Regular.ttf
```
</details>

## Types of Logical Operators

## Arithmetic Operators: Perform basic mathematical operations.

`-` Subtraction<br>
`-expr` Negation (Reverses the signs of an expression)<br>
`*` Multiplication<br>
`/` Division<br>
`~/` Division that returns only the integer part of the result<br>
`%` Modulo (remainder of division)<br>
`++var` Increment<br>
`--var` Decrement

## Relational Operators: Compare two values.

`>` Greater than<br>
`<` Less than<br>
`>=` Greater than or equal to<br>
`<=` Less than or equal to<br>
`==` Equal to<br>
`!=` Not equal to

## Assignment Operators: Assign values to variables.

`=` Assignment<br>
`+=` Addition and assignment<br>
`-=` Subtraction and assignment<br>
`*=` Multiplication and assignment<br>
`/=` Division and assignment<br>
`~/=` Integer division and assignment<br>
`%=` Modulo and assignment

## Logical Operators: Perform logical operations (AND, OR, NOT).

`&&` Logical AND<br>
`||` Logical OR<br>
`!` Logical NOT

## Bitwise Operators: Perform bitwise operations.

`&` Bitwise AND<br>
`|` Bitwise OR<br>
`^` Bitwise XOR<br>
`~` Bitwise NOT<br>
`<<` Left shift<br>
`>>` Right shift

## Other Operators:

`??` If-null operator<br>
`?.` Safe member access operator<br>
`..` Cascade operator<br>
`?..` Null-aware cascade operator<br>
`...` Spread operator<br>
`...?` Null-aware spread operator

<details>
<summary style="font-size: 20px">Basic Commands 👈</summary>
<br>

**Commands to `terminal`/`cmd`**
```dart
flutter pub add // Install libs in project
flutter pub get // Get library updates or install libraries from "pubspec.yaml"
flutter upgrade // Fetch Flutter updates 
flutter pub run flutter_launcher_icons:main OR dart run flutter_launcher_icons:main // Register a new icon before building (lib required "flutter_launcher_icons")
flutter build apk --release // Perform a standard build for Android
flutter build apk --split-per-abi // Build for Android, generating 3 files for phones with different architectures: "x64", "x86", and "both architectures"
flutter build apk --obfuscate // Build with obfuscated source code
flutter create . // Repair your project folder
flutter run // Initialize project
```
</details>

## Optional Settings - Visual Studio Code

**VSCode settings file:** `settings.json`<br>
Configuration for `dart` along with the Flutter package

```json
"[dart]": {
  "editor.formatOnSave": true,
  "editor.formatOnType": true,
  "editor.rulers": [
    /*Keeping this commented removes the vertical display line*/
    // 80 
  ],
  "editor.selectionHighlight": false,
  "editor.suggestSelection": "first",
  "editor.tabCompletion": "onlySnippets",
  "editor.wordBasedSuggestions": "off"
},
```