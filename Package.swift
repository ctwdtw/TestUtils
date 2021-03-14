// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TestUtils",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "TestUtils", type: .dynamic,
            targets: ["TestUtils"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/devicekit/DeviceKit.git", from: "4.0.0"),
    ],
    targets: [
        .target(
            name: "TestUtils",
            dependencies: ["DeviceKit"]
        ),
        .testTarget(
            name: "TestUtilsTests",
            dependencies: ["TestUtils"]
        ),
    ]
)
