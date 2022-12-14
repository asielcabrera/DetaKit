// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DetaKit",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "DetaKit",
            targets: ["DetaKit"]),
        .library(
            name: "DetaModels",
            targets: ["DetaModels"]),
        .library(
            name: "DetaNetwork",
            targets: ["DetaNetwork"]),
        .library(
            name: "DetaUtils",
            targets: ["DetaUtils"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "DetaKit",
            dependencies: [
                "DetaModels",
                "DetaNetwork",
                "DetaUtils"
            ]),
        .target(
            name: "DetaModels",
            dependencies: []),
        .target(
            name: "DetaNetwork",
            dependencies: []),
        .target(
            name: "DetaUtils",
            dependencies: []),
        .executableTarget(
            name: "Run",
            dependencies: ["DetaKit"]),
        .testTarget(
            name: "DetaKitTests",
            dependencies: ["DetaKit"]),
    ]
)
