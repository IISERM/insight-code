# Code Style Guide

Comments are not necessary if the code is self explanatory.
Good code and naming conventions are documentations in themselves.

This document is a guide to the coding style that should be followed in the project.
In this document, any line without the word *prefer* is a rule that **must** be followed.
Any line with the word *prefer* is a rule that **should** be followed if possible.

## Naming Conventions

- Use `camelCase` for variables and functions. Example: `myVariable`, `myFunction()`.
- Use `PascalCase` for classes and enums. Example: `MyClass`.
- Use `UPPER_CASE` for constants. Example: `MY_CONSTANT`. Example: `MY_CONSTANT`.
- Use `camelCase` for file names. Example: `myFile.dart`. Example: `myFile.dart`.
- Append `_` to the start of private variables and functions. Example: `_myPrivateVariable`, `_myPrivateFunction()`.
- Never use abbreviations for variable names. Example: `myVariable` instead of `myVar`.
- Prefer not to use single letter variable names. Example: `myVariable` instead of `a`. Cases where single letter variable names are acceptable if the code block is small:
  - `for` loops.
  - `if` statements.
  - `switch` statements.
- Prefer to use `is` and `has` as prefixes for boolean variables. Example: `isReady`, `hasError`.
- Prefer to append **list, map, set, etc** as suffix *lists, maps, sets, etc*. Example: `myList`, `myMap`, `mySet`.
- Prefer to use `get` as a prefix for getter functions. Example: `getMyVariable()`.
- Prefer to use `set` as a prefix for setter functions. Example: `setMyVariable()`.
- Prefer to use `on` as a prefix for event functions. Example: `onPressed()`.
- Prefer to use `build` as a prefix for build functions. Example: `buildMyWidget()`.

## File Structure
-`lib` as the root folder for all files.
- All **assets** should be inside the `assets` folder. Example: `assets/images`, `assets/fonts`.
- All **data models** and **enums** should be inside the `models` folder. Example: `models/user.dart`, `models/student.dart`.
- All common **widgets** should be inside the `common/widgets` folder. Example: `common/widgets/insightLogo.dart`.
- All common **functions** should be inside the `common/functions` folder. Example: `common/functions/validateEmail.dart`.
- Every page should have its own folder inside the `screens` folder. Example: `screens/homePage`.
- Every `pageFolder` in `screens` should have a `pageFolder.dart` file. Example: `screens/homePage/homePage.dart`.
  - Every `pageFolder` should have a `widgets` folder. Example: `screens/homePage/widgets`.
    - All widgets that are used only in that page should be inside the `widgets` folder. Example: `screens/homePage/widgets/myWidget.dart`.
    - If a widget is used more than 2-3 times in the project, it should be inside the `common/widgets` folder.
  - Every `pageFolder` in `screens` should have a `functions` folder. Example: `screens/homePage/functions`.
    - All functions that are used only in that page should be inside the `functions` folder. Example: `screens/homePage/functions/myFunction.dart`.
    - If a function is used more than 2-3 times in the project, it should be inside the `common/functions` folder.
- Every theme should have its own file inside the `themes` folder. Example: `themes/defaultLightTheme.dart`.

## Coding Structure
- Prefer to use `const` over `final` for variables that are supposed to be constant. [README](https://en.wikipedia.org/wiki/Inheritance_(object-oriented_programming))
- Prefer `final` variables over `var` variables.
- Never use `dynamic` as a variable type. Always use a specific type instead.
- Prefer to use Dart 's pre-defined types instead of using custom types.
- Use [composition](https://stackify.com/oop-concepts-composition/) rather than [inheritance](https://en.wikipedia.org/wiki/Inheritance_(object-oriented_programming)), when creating new data models.
- If the indentation is not set to 2 spaces, set it to 2 spaces.
- If the indentation level is more than 5, refactor the code.
  - Abstract the code into smaller widgets or functions.
  - Always try to have the false condition of an 'if' statement at the start and return out of the function.
- Prefer to have imports in the following order:
  1. Flutter imports.
  2. Dart imports.
  3. Third party imports.
  4. Project imports.
- Prefer to have variables in the following order:
  1. `final` variables.
  2. `static` variables.
  3. `late` variables.
  4. `final` variables.