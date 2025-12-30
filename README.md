
A simple and clean Flutter app to manage daily tasks. Built with minimal dependencies and a focus on functionality.

## Features
- Add,edit,and delete tasks with title and  extra details (sub title)
- Mark that you can  tasks as complete/incomplete with a checkbox
- Swipe to delete tasks quickly
- Date and time picker for task scheduling
- Clean teal-themed UI with smooth animations
- No database - tasks are stored in 

## How to Run
1. Clone this repo and navigate to the project folder
2. Run `flutter pub get` to install dependencies
3. Connect a device or start an emulator
4. Run `flutter run`

## What I Learned

Building this app taught me how to properly manage state in Flutter. I used a simple approach where a `ChangeNotifier` class holds the task list, and whenever tasks are added, deleted, or updated, it notifies the UI to rebuild. This was cleaner than using `setState` everywhere.

The date picker integration took some trial and error - I had to figure out how to format dates properly and pass them between screens. Swipe-to-delete with `Dismissible` was surprisingly straightforward once I understood how it works.

Overall, this project helped me understand how to structure a Flutter app with separate models, data handling, and UI layers instead of putting everything in one file.

## Sources & Credits

- **Lottie Animation**: Empty state animation from [LottieFiles](https://lottiefiles.com/)
- **Packages Used**:
  - `animate_do` - For smooth UI animations
  - `flutter_datetime_picker_plus` - Date and time picker
  - `panara_dialogs` - Alert dialogs
  - `ftoast` - Toast notifications
  - `uuid` - Unique task IDs
- **UI Inspiration**: Various task manager apps on Dribbble and Google Play
