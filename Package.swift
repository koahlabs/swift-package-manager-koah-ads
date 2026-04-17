// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KoahAds",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "KoahAds",
            targets: ["KoahAdsTarget"]
        )
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "KoahAds",
            url: "https://github.com/koahlabs/swift-package-manager-koah-ads/releases/download/0.5.0/KoahSDK-0.5.0.zip",
            checksum: "004c91361b00e8563968259b328ce5eb0eca1f1ae6cc706a423d8d0712c48cd0"
        ),
        .target(
            name: "KoahAdsTarget",
            dependencies: ["KoahAds"],
            path: "KoahAdsTarget"
        )
    ]
)
