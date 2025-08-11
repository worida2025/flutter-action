# WhatsApp UI Clone

A Flutter application that recreates the WhatsApp user interface with authentic design and functionality.

## Features

- **Chat List Screen**: Main screen showing list of conversations with unread message counts
- **Individual Chat Screen**: Detailed chat view with message bubbles and input field
- **Tabbed Interface**: Camera, Chats, Status, and Calls tabs
- **WhatsApp-style Design**: Authentic colors, fonts, and UI elements
- **Sample Data**: Pre-populated with realistic chat and message data
- **Responsive UI**: Works on different screen sizes

## Screenshots

The app includes:
- Authentic WhatsApp color scheme (teal and green)
- Message bubbles with sent/received styling
- Online status indicators
- Unread message badges
- Tab navigation
- Chat search functionality
- Status updates view
- Call history

## Project Structure

```
lib/
├── main.dart                 # App entry point
├── models/
│   ├── chat.dart            # Chat and Message data models
│   └── sample_data.dart     # Sample data for demonstration
├── screens/
│   ├── chat_list_screen.dart # Main chat list with tabs
│   └── chat_screen.dart     # Individual chat conversation
└── widgets/
    ├── chat_list_item.dart  # Chat list item widget
    └── message_bubble.dart  # Message bubble widget
```

## Getting Started

### Prerequisites

- Flutter SDK (3.0.0 or higher)
- Dart SDK (3.0.0 or higher)

### Installation

1. Clone this repository
2. Navigate to the `whatsapp_ui` directory
3. Run `flutter pub get` to install dependencies
4. Run `flutter run` to start the app

### Usage

The app demonstrates a complete WhatsApp-like interface:

1. **Main Screen**: Shows a list of chats with tabs for Camera, Chats, Status, and Calls
2. **Chat View**: Tap any chat to open the conversation screen
3. **Send Messages**: Use the input field to send new messages
4. **Navigation**: Use the tabs to switch between different sections

## Design Elements

- **Colors**: Official WhatsApp color scheme
  - Primary: `#075E54` (dark teal)
  - Accent: `#25D366` (WhatsApp green)
  - Message bubbles: `#DCF8C6` (light green for sent), white for received

- **Typography**: Clean, readable text with appropriate sizing
- **Icons**: Material Design icons matching WhatsApp's style
- **Layout**: Faithful recreation of WhatsApp's UI patterns

## Contributing

This is a demonstration project showing how to recreate WhatsApp's UI in Flutter. Feel free to enhance the functionality or add new features.

## License

This project is for educational and demonstration purposes only.