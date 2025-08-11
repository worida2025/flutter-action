# Flutter Screenshot Example

This example demonstrates how to use the `flutter-action` GitHub Action to:

1. Set up a Flutter development environment in GitHub Actions
2. Build Flutter applications for multiple platforms  
3. Generate screenshots during CI/CD workflows
4. Upload build artifacts and screenshots

## Example App

The example includes a simple Flutter app (`lib/main.dart`) with:
- Material Design interface
- Counter functionality
- Custom content designed for screenshot testing
- Integration test for automated screenshot capture

## Workflow Features

The screenshot workflow (`.github/workflows/screenshot_example.yaml`) demonstrates:

- **Flutter Setup**: Using the flutter-action to install Flutter
- **Multi-platform Builds**: Building for Android APK and Web
- **Screenshot Capture**: Automated screenshot generation
- **Artifact Upload**: Storing builds and screenshots as GitHub artifacts

## Usage

1. The workflow triggers on pushes to the `example/` directory
2. It can also be run manually via workflow dispatch
3. Screenshots and build artifacts are uploaded and retained for 30 days

## Screenshot Testing

The app includes integration tests that can capture screenshots:

- `integration_test/screenshot_test.dart` - Main screenshot test
- `test_driver/integration_test.dart` - Test driver for integration tests

## Build Outputs

The workflow generates:
- Android debug APK
- Web build (HTML/JS/CSS)
- Screenshot files (when available)
- Build and test reports

## Running Locally

To run this example locally:

```bash
cd example
flutter pub get
flutter test
flutter build apk --debug
flutter build web --release
```

This example showcases how developers can integrate screenshot generation into their Flutter CI/CD pipelines using the flutter-action.