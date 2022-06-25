// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SimpleID",
    platforms: [.macOS(.v10_12), .iOS(.v9)],
    products: [
        .library(
            name: "SimpleID",
            targets: ["SimpleID"]),
    ],
    targets: [
        .target(
            name: "SimpleID",
            dependencies: []),
        .testTarget(
            name: "SimpleIDTests",
            dependencies: ["SimpleID"]),
    ]
)
