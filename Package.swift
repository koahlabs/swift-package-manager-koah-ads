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
            url: "https://github.com/koahlabs/swift-package-manager-koah-ads/releases/download/0.1.0/KoahSDK-0.1.0.zip",
            checksum: "7dd6c88587859007dcbe2cd4675f1ffa36468a7b2130a259e94f41dc54e7da9e"
        ),
        .target(
            name: "KoahAdsTarget",
            dependencies: ["KoahAds"]
        )
    ]
)
