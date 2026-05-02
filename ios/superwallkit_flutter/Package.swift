// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "superwallkit_flutter",
    platforms: [
        .iOS("14.0")
    ],
    products: [
        .library(name: "superwallkit-flutter", targets: ["superwallkit_flutter"])
    ],
    dependencies: [
        .package(url: "https://github.com/superwall/Superwall-iOS.git", exact: "4.14.2")
    ],
    targets: [
        .target(
            name: "superwallkit_flutter",
            dependencies: [
                .product(name: "SuperwallKit", package: "Superwall-iOS")
            ]
        )
    ]
)
