// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "REVUPMediaMobVista",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "REVUPMediaMobVista",
            targets: ["REVUPMediaMobVistaTarget"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package.git", exact: "8.1.7"),
    ],
    targets: [
        .target(
            name: "REVUPMediaMobVistaTarget",
            dependencies: [
                .target(name: "REVUPMediaMobVista"),
                .product(name: "MintegralAdSDK", package: "MintegralAdSDK-Swift-Package"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "REVUPMediaMobVista",
            url: "https://github.com/revup-tnk/REVUP-iOS-SDK/releases/download/1.2.0/REVUPMediaMobVista.zip",
            checksum: "a1a901a1e84638bb49e162bb05a4970e2b90c44308f1c61d85b67cfe5adfdedc"
        ),
    ]
)
