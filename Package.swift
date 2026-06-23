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
            url: "https://github.com/koahlabs/swift-package-manager-koah-ads/releases/download/0.9.1/KoahSDK-0.9.1.zip",
            checksum: "8cc2e702b9083dd2ab11e35e60a6db1205f13581ed680f22889482e2d7fa0a69"
        ),
        .target(
            name: "KoahAdsTarget",
            dependencies: ["KoahAds"],
            path: "KoahAdsTarget"
        )
    ]
)
