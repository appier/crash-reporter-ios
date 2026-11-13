// swift-tools-version:5.7.1
import PackageDescription

// SPM distribution of AppierCrashReporter, the crash reporter shared by Appier's iOS SDKs.
//
// The precompiled binary ships as `AppierCrashReporter.xcframework` (a dynamic binaryTarget), so
// a host app holds one copy however many Appier SDKs it installs. Hosts don't use it directly:
// AppierAds and Aistra depend on this package with an exact version and import its
// `@_spi(Appier)` API.
let package = Package(
    name: "AppierCrashReporter",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "AppierCrashReporter",
            targets: ["AppierCrashReporterWrapper"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "AppierCrashReporter",
            path: "AppierCrashReporter.xcframework"
        ),
        .target(
            name: "AppierCrashReporterWrapper",
            dependencies: [
                .target(name: "AppierCrashReporter")
            ],
            path: "Sources/AppierCrashReporterWrapper",
            linkerSettings: [
                .linkedFramework("Foundation"),
                .linkedFramework("UIKit"),
                .linkedLibrary("compression"),
                .linkedLibrary("c++")
            ]
        )
    ]
)
