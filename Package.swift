// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "RxReachability",
    products: [
        .library(name: "RxReachability", targets: ["RxReachability"])
    ],
    dependencies: [
        .package(url: "https://github.com/ashleymills/Reachability.swift.git", from: "5.0.0"),
        .package(url: "https://github.com/ReactiveX/RxSwift.git", from: "5.0.0")
    ],
    targets: [
        .target(
            name: "RxReachability",
            dependencies: ["RxSwift", "RxCocoa", "ReachabilitySwift"],
            path: "RxReachability"),
        .testTarget(
            name: "RxReachability-Tests",
            dependencies: ["RxReachability"],
            path: "RxReachability-Tests"),
    ],
    swiftLanguageVersions: [.v5]
)
