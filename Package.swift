// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YandexLoginSDK",
    platforms: [.iOS(.v9)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "YandexLoginSDK",
            targets: ["YandexLoginSDK"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "YandexLoginSDK",            
            dependencies: [],
            path: "Sources/YandexLoginSDK",
            publicHeadersPath: "Public",
            cSettings: [
                .headerSearchPath("Private/Core"),
                .headerSearchPath("Private/Core/Executor"),
                .headerSearchPath("Private/Core/Storage"),
                .headerSearchPath("Private/Networking"),
                .headerSearchPath("Private/Networking/RequestParams"),
                .headerSearchPath("Private/Networking/ResponseParser"),
            ]
        ),
        .testTarget(
            name: "YandexLoginSDKTests",
            dependencies: ["YandexLoginSDK"]),
    ]
)
