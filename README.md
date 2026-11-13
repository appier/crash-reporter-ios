# AppierCrashReporter iOS

Binary distribution of **AppierCrashReporter**, the crash and handled-error reporter shared by
Appier's iOS SDKs (AppierAds, Aistra). It ships as a signed, dynamic
`AppierCrashReporter.xcframework`, so an app holds one copy however many Appier SDKs it installs.

**Apps don't integrate it directly.** It is installed as a dependency of the Appier SDKs, which
pin the exact version they were built with. Its API is internal to those SDKs.

This repo is generated from the private source repo `appier-crash-reporter-ios`; only the built
framework, podspec and SPM manifest live here. Releases are opened as PRs by the source repo's CI.

## Requirements

- iOS 12.0+
- A dynamic framework: SPM and CocoaPods embed it automatically. With manual integration, embed
  `AppierCrashReporter.xcframework` (**Embed & Sign**) next to the Appier SDK frameworks, in the
  version listed in the SDK's release notes.

## Installation

Installed with the Appier SDKs:

- **Swift Package Manager**: `https://github.com/appier/crash-reporter-ios.git`, resolved
  through `ads-ios-sdk` and `ads-aistra-ios`.
- **CocoaPods**: `pod 'AppierCrashReporter'`, pulled in by `AppierAds` and `AppierAistra`.
- **Direct download**: `AppierCrashReporterFramework.zip` from the
  [releases](https://github.com/appier/crash-reporter-ios/releases).

## What it collects

Crashes and errors of the Appier SDKs only, never the app's own crashes: the stack and the binary
images of the crash, the SDK version, OS version and device model. No advertising identifiers,
no IDFV, no device name. See Appier's SDK privacy documentation.

## License

Available under the MIT license. See the [LICENSE](LICENSE) file.

## Author

Appier Inc., appier-ssp-dev@appier.com — https://www.appier.com
