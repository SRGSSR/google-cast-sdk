// swift-tools-version:5.3

import PackageDescription

struct PackageMetadata {
    static let version: String = "4.8.3"
    static let checksum: String = "bc2c3c2434ef2895a0388ac3f16932242d3d3ac11805f810dbe7d7bce3bb27f6"
}

let package = Package(
    name: "GoogleCast",
    platforms: [
        .iOS(.v14),
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
