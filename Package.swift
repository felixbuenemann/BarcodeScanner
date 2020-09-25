// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "BarcodeScanner",
    defaultLocalization: "en",
    platforms: [.iOS(.v9)],
    products: [
        .library(
            name: "BarcodeScanner",
            targets: ["BarcodeScanner"]
        )
    ],
    targets: [
        .target(
            name: "BarcodeScanner",
            path: "",
            exclude: [
                "Art",
                "BarcodeScanner",
                "BarcodeScanner.podspec",
                "BarcodeScanner.xcodeproj",
                "CONTRIBUTING.md",
                "Example",
                "LICENSE.md",
                "README.md"
            ],
            sources: ["Sources"],
            resources: [
                .copy("Images"),
                .process("Localization")
            ]
        )
    ],
    swiftLanguageVersions: [.v4]
)
