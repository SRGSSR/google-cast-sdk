// swift-tools-version:5.7

import PackageDescription

struct PackageMetadata {
    static let version: String = "4.8.6"
    static let checksum: String = "55f6c21291a1315c68063f07e7d76225564bff70f2fd38caad135c71d66eb310"
}

let package = Package(
    name: "GoogleCast",
    platforms: [
        .iOS(.v16),
    ],
    products: [
        .library(
            name: "GoogleCast",
            targets: ["GoogleCast"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "GoogleCast",
            url: "https://github.com/SRGSSR/google-cast-sdk/releases/download/\(PackageMetadata.version)/GoogleCast.xcframework.zip",
            checksum: PackageMetadata.checksum
        )
    ]
)
