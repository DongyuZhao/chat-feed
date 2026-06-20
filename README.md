# Chat Feed

Monorepo configuration for Chat Feed clients across Apple, Android, and web.

## Layout

- `swift/` — Swift Package Manager package for the `SwiftChatFeed` library plus a `ChatFeedSample` executable target
- `android/` — Android Gradle multi-module project with a Kotlin `:library` module and a Kotlin `:sample` app module
- `web/` — React 19 + TypeScript package with `src/library` for reusable code and `src/sample` for the sample app entry

## Sample apps

- Swift: `cd /home/runner/work/chat-feed/chat-feed/swift && swift run ChatFeedSample`
- Android: open `/home/runner/work/chat-feed/chat-feed/android` and run the `:sample` app module
- Web: `cd /home/runner/work/chat-feed/chat-feed/web && npm run build` to emit the sample app to `dist/sample/index.html`

## Validation

- Swift: `cd /home/runner/work/chat-feed/chat-feed/swift && swift test && swift build --product ChatFeedSample`
- Android: `cd /home/runner/work/chat-feed/chat-feed/android && ./gradlew :library:assembleDebug :sample:assembleDebug`
- Web: `cd /home/runner/work/chat-feed/chat-feed/web && npm test && npm run build`
