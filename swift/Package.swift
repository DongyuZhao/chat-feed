// swift-tools-version: 6.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-chat-feed",
    platforms: [
        .iOS("26.0"),
        .macOS("26.0"),
    ],
    products: [
        .library(
            name: "SwiftChatFeed",
            targets: ["SwiftChatFeed"]
        ),
        .executable(
            name: "ChatFeedSample",
            targets: ["ChatFeedSample"]
        ),
    ],
    targets: [
        .target(
            name: "SwiftChatFeed"
        ),
        .executableTarget(
            name: "ChatFeedSample",
            dependencies: ["SwiftChatFeed"]
        ),
        .testTarget(
            name: "SwiftChatFeedTests",
            dependencies: ["SwiftChatFeed"]
        ),
    ],
    swiftLanguageModes: [.v6]
)
