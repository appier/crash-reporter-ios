// Intentionally empty.
//
// SPM binaryTargets cannot be a library product's sole content, so this shim target wraps
// `AppierCrashReporter.xcframework` and carries its link settings (see Package.swift). SDKs
// import `AppierCrashReporter`, the module vended by the binary, never this wrapper.
