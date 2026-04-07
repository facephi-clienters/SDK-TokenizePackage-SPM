// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SDK-TokenizePackage-SPM",
    platforms: [
        .iOS(.v9),
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SDK-TokenizePackage-SPM",
            targets: ["SDK-TokenizePackage-SPM", "tokenizeComponent"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "git@github.com:facephi-clienters/SDK-CorePackage-SPM.git", .exactItem("2.7.0")),
        .package(url: "git@github.com:facephi-clienters/FPBTokenizer-SPM.git", .upToNextMinor(from: "4.0.4"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SDK-TokenizePackage-SPM",
            dependencies: [
                "tokenizeComponent",
                "SDK-CorePackage-SPM",
                "FPBTokenizer-SPM"
            ]),
        .binaryTarget(name: "tokenizeComponent",
        url: "https://facephicorp.jfrog.io/artifactory/spm-pro-fphi/SDK/FPHISDKTokenizeComponent/2.7.0/tokenizeComponent.zip",
        checksum: "899aabc89b91f9eecf7c83c51b054d767f3eff379cb9a9e61ca947bbcd3f9afa")
    ]
)
