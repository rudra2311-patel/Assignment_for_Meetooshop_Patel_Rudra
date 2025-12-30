
A simple and clean Flutter app to manage daily tasks. Built with minimal dependencies and a focus on functionality.

## Features
- Add,edit,and delete tasks with title and  extra details (sub title)
- Mark that you can  tasks as complete/incomplete with a checkbox
- Swipe to delete tasks quickly
- Date and time picker for task scheduling
- Clean teal-themed UI with smooth animations


## How to Run
1. Clone this repo and navigate to the project folder
2. Run `flutter pub get` to install dependencies
3. Connect a device or start an emulator
4. Run `flutter run`

## What I Learned
Creating this app taught me the importance of effective state management in Flutter. I implemented a straightforward method where a ChangeNotifier class maintains the task list, and whenever tasks are added, removed, or modified, it informs the UI to refresh. This approach was tidier than relying on setState throughout. Integrating the date picker involved some experimentation - I needed to learn how to format dates correctly and transfer them between screens. The swipe-to-delete feature using Dismissible turned out to be quite simple once I grasped its functionality. Overall, this project enhanced my understanding of how to organize a Flutter app with distinct models, data management, and UI components rather than consolidating everything into a single file.

## Sources : 

- **Lottie Animation**: Empty state animation from [LottieFiles](https://lottiefiles.com/)
- **Packages Used**:
  - `animate_do` - For smooth UI animations
  - `flutter_datetime_picker_plus` - Date and time picker
  - `panara_dialogs` - Alert dialogs
  - `ftoast` - Toast notifications
  - `uuid` - Unique task IDs
- **UI Inspiration**: Various task manager apps on Dribbble and Google Play

Images

<img width="529" height="1133" alt="Screenshot 2025-12-30 162218" src="https://github.com/user-attachments/assets/eaafaa08-bda7-45c1-9da2-6b6993da6a41" />
<img width="531" height="1137" alt="Screenshot 2025-12-30 162210" src="https://github.com/user-attachments/assets/4c9251ad-7aab-46dd-b1f0-6e75a9c758ae" />
<img width="561" height="1141" alt="Screenshot 2025-12-30 162133" src="https://github.com/user-attachments/assets/47254ce3-a6f3-4355-9202-768e0289e390" />

