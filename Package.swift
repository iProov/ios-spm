// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "iProov",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "iProov",
            targets: ["iProovTargets"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "iProov",
            url: "https://github.com/iProov/ios/releases/download/12.5.0-rc/iProov.xcframework.zip",
            checksum: "1e638d703fc1b1e53601f4b9a4a3901b6349f4b2cd793a0159a55b0fa7efc338"
        ),
        .target(
            name: "iProovTargets",
            dependencies: [
                .target(name: "iProov", condition: .when(platforms: .some([.iOS]))),
            ],
            path: "iProovTargets",
            resources: [
                .copy("Resources/PrivacyInfo.xcprivacy"),
            ]
        ),
    ]
)
