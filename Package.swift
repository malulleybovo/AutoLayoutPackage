// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "AutoLayoutPackage",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "AutoLayoutPackage",
            targets: ["AutoLayoutPackage"]),
    ],
    targets: [
        .target(
            name: "AutoLayoutPackage",
            dependencies: []),
        .testTarget(
            name: "AutoLayoutPackageTests",
            dependencies: ["AutoLayoutPackage"]),
    ]
)
