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
            url: "https://github.com/koahlabs/swift-package-manager-koah-ads/releases/download/0.1.0/KoahAds.xcframework.zip",
            checksum: "a6568703c729547036762940531a291455404b6884b28033035c688b7465791b"
        ),
        .target(
            name: "KoahAdsTarget",
            dependencies: ["KoahAds"]
        )
    ]
)
