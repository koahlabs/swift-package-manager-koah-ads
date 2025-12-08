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
            url: "https://github.com/koahlabs/swift-package-manager-koah-ads/releases/download/0.2.0/KoahSDK-0.2.0.zip",
            checksum: "a9d42a5eeeffc2e5b5bb13f38cf002c7072675ca734ba49ba8eb68cc67855e6b"
        ),
        .target(
            name: "KoahAdsTarget",
            dependencies: ["KoahAds"],
            path: "KoahAdsTarget"
        )
    ]
)
