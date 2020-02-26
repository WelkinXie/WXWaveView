// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "WXWaveView",
    // platforms: [.iOS("8.0")],
    products: [
        .library(name: "WXWaveView", targets: ["WXWaveView"])
    ],
    targets: [
        .target(
            name: "WXWaveView",
            path: "WXWaveView-demo/WXWaveView"
        )
    ]
)