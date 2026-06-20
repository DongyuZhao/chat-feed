// swift-tools-version: 6.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FeedApple",
    platforms: [
        .iOS("26.0"),
        .macOS("26.0"),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "FeedApple",
            targets: ["FeedApple"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "FeedApple"
        ),
        .testTarget(
            name: "FeedAppleTests",
            dependencies: ["FeedApple"]
        ),
    ],
    swiftLanguageModes: [.v6]
)
