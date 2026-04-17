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
            url: "https://github.com/koahlabs/swift-package-manager-koah-ads/releases/download/0.5.1/KoahSDK-0.5.1.zip",
            checksum: "b40f0f6f87fe233a9d015377117e133f18f40f89674a4093ec6b4ed4dfff43a6"
        ),
        .target(
            name: "KoahAdsTarget",
            dependencies: ["KoahAds"],
            path: "KoahAdsTarget"
        )
    ]
)
