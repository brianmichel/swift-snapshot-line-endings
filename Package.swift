// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-snapshot-line-endings",
    platforms: [
        .iOS(.v13),
        .macOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "swift-snapshot-line-endings",
            targets: ["swift-snapshot-line-endings"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/pointfreeco/swift-snapshot-testing",
            from: "1.12.0"
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "swift-snapshot-line-endings"
        ),
        .testTarget(
            name: "swift-snapshot-line-endingsTests",
            dependencies: [
                "swift-snapshot-line-endings",
                .product(name: "SnapshotTesting", package: "swift-snapshot-testing"),
            ]),
    ]
)
