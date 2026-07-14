// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "open_filex",
    platforms: [
        .iOS("13.0")
    ],
    products: [
        // The plugin name contains "_", so it is replaced with "-" for the library name.
        .library(name: "open-filex", targets: ["open_filex"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "open_filex",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ],
            cSettings: [
                .headerSearchPath("include/open_filex")
            ]
        )
    ]
)
