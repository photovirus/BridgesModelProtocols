// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "BridgesModelProtocols",
    platforms: [
        .macOS(.v13)
    ],
    products: [
        .library(name: "BridgesModelProtocols", targets: ["BridgesModelProtocols"])
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0"),
        .package(url: "https://github.com/SwifQL/PostgresBridge.git", from: "1.0.0-rc"),
        .package(url: "https://github.com/SwifQL/VaporBridges.git", from: "1.0.0-rc"),
    ],
    targets: [
        .target(
            name: "BridgesModelProtocols",
            dependencies: [
                .product(name: "Vapor", package: "vapor"),
                .product(name: "PostgresBridge", package: "PostgresBridge"),
                .product(name: "VaporBridges", package: "VaporBridges"),
            ]
        )
    ]
)  
