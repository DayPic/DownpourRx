// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "DownpourRx",
    platforms: [
        .iOS(.v15),
    ],
    products: [
        .library(
            name: "DownpourRx",
            targets: ["DownpourRx"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "6.0.0")
    ],
    targets: [
        .target(
            name: "DownpourRx",
            dependencies: [
                .product(name: "RxSwift", package: "RxSwift"),
                .product(name: "RxCocoa", package: "RxSwift")
            ],
            path: "Sources"
        ),
        .testTarget(
            name: "DownpourRxTests",
            dependencies: ["DownpourRx"],
            path: "Tests"
        )
    ]
)
