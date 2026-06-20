# Chat Feed

Monorepo configuration for Chat Feed clients across Apple, Android, and web.

## Layout

- `swift/` — Swift Package Manager package configured for iOS 26 and macOS 26
- `android/` — Android Gradle library project configured with compile SDK 37
- `web/` — React 19 web package

## Validation

- Swift: `cd /home/runner/work/chat-feed/chat-feed/swift && swift test`
- Android: `cd /home/runner/work/chat-feed/chat-feed/android && ./gradlew :library:assembleDebug :library:testDebugUnitTest`
- Web: `cd /home/runner/work/chat-feed/chat-feed/web && npm test`