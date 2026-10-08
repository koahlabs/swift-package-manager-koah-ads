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
            url: "https://github.com/koahlabs/swift-package-manager-koah-ads/releases/download/1.1.0/KoahSDK-1.1.0.zip",
            checksum: "3eb3e3e431e20c7be8ab46324c460a1e08f0cb5cb96dfe1a84f7b9078573bc2c"
        ),
        .target(
            name: "KoahAdsTarget",
            dependencies: ["KoahAds"],
            path: "KoahAdsTarget"
        )
    ]
)
