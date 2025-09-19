// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AdiscopeMediaAdMob",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AdiscopeMediaAdMob",
            targets: ["AdiscopeMediaAdMobTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "12.2.0")
    ],
    targets: [
        .target(
            name: "AdiscopeMediaAdMobTarget",
            dependencies: [
                .target(name: "AdiscopeMediaAdMob"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
            ],
            path: "Sources"
        ),
        .binaryTarget(
            name: "AdiscopeMediaAdMob",
            url: "https://github.com/adiscope/Adiscope-iOS-Sample/releases/download/4.3.0/AdiscopeMediaAdMob.zip",
            checksum: "bcb7ec28df96d77fb0849b1aea092a79eff38deecfce3013d8f13cd7353161f4"
        ),
    ]
)
