// swift-tools-version: 5.10

import PackageDescription

let package = Package(
    name: "swift-winui",
    products: [
        .library(name: "WinUI", type: .static, targets: ["WinUI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/rayman-zhao/swift-cwinrt", branch: "wasdk1.8"),
        .package(url: "https://github.com/rayman-zhao/swift-windowsfoundation", branch: "wasdk1.8"),
        .package(url: "https://github.com/rayman-zhao/swift-uwp", branch: "wasdk1.8"),
        .package(url: "https://github.com/rayman-zhao/swift-windowsappsdk", branch: "wasdk1.8"),
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
