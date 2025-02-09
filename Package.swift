// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TestUtils",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_12),
    ],
    products: [
        .library(
            name: "TestUtils", type: .dynamic,
            targets: ["TestUtils"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/ytyubox/DeviceKit.git", .branch("custom")),
        .package(url: "https://github.com/krzysztofzablocki/Difference.git", .branch("master")),
    ],
    targets: [
        .target(
            name: "TestUtils",
            dependencies: ["DeviceKit", "Difference"]
        ),
        .testTarget(
            name: "TestUtilsTests",
            dependencies: ["TestUtils"]
        ),
    ]
)
