// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Packages",
    platforms: [.iOS(.v17)],
    products: [
        .library(
            name: "Packages",
            targets: [
                "Core",
                "Home",
                "Profile",
                "Setting"
            ]
        ),
    ], 
    dependencies: [
        .package(
            url: "https://github.com/pointfreeco/swift-composable-architecture",
            exact: "1.6.0"
        )
    ],
    targets: [
        .target(name: "Core"),
        .target(
            name: "Home",
            dependencies: [
                .product(
                    name: "ComposableArchitecture",
                    package: "swift-composable-architecture"
                )
            ]
        ),
        .target(
            name: "Profile",
            dependencies: [
                .product(
                    name: "ComposableArchitecture",
                    package: "swift-composable-architecture"
                ),
                "Core"
            ]
        ),
        .target(name: "Setting"),
    ]
)
