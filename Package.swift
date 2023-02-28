// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "SomeTarget",
    products: [
        .executable(
            name: "SomeTarget",
            targets: ["SomeTarget"]
        )
    ],
    dependencies: [],
    targets: [
        .executableTarget(
            name: "SomeTarget",
            dependencies: [],
            plugins: [.plugin(name: "CurlPlugin")]
        ),
        .plugin(
            name: "CurlPlugin",
            capability: .buildTool()
        )
    ]
)
