// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "swift-winui",
    products: [
        .library(name: "WinUI", type: .static, targets: ["WinUI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/rayman-zhao/swift-cwinrt", branch: "main"),
        .package(url: "https://github.com/rayman-zhao/swift-windowsfoundation", branch: "main"),
        .package(url: "https://github.com/rayman-zhao/swift-uwp", branch: "main"),
        .package(url: "https://github.com/rayman-zhao/swift-windowsappsdk", branch: "main"),
    ],
    targets: [
        .target(
            name: "WinUI",
            dependencies: [
                .product(name: "CWinRT", package: "swift-cwinrt"),
                .product(name: "WindowsFoundation", package: "swift-windowsfoundation"),                
                .product(name: "UWP", package: "swift-uwp"),
                .product(name: "WinAppSDK", package: "swift-windowsappsdk"),
            ]
        )
    ]
)
