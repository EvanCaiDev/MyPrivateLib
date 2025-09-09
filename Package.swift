// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "MyPrivateLib",
    platforms: [
        .iOS(.v13),
        .macOS(.v12)
    ],
    products: [
        .library(
            name: "MyPrivateLib",
            targets: ["MyPrivateLib"]),
    ],
    dependencies: [
        // 依赖私有仓库的 Alamofire
        .package(url: "https://github.com/Alamofire/Alamofire.git",
                 .upToNextMajor(from: "5.0.0"))
    ],
    targets: [
        .target(
            name: "MyPrivateLib",
            dependencies: ["Alamofire"]),
        .testTarget(
            name: "MyPrivateLibTests",
            dependencies: ["MyPrivateLib"]),
    ]
)

