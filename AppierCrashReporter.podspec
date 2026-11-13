require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'version_crash_reporter_sdk.json')))

Pod::Spec.new do |s|
  s.name         = "AppierCrashReporter"
  s.module_name  = "AppierCrashReporter"
  s.version      = package['version'][1..-1]
  s.summary      = "Crash reporter shared by Appier's iOS SDKs."
  s.description  = "Captures crashes and handled errors of Appier's iOS SDKs (AppierAds, Aistra) " \
                   "and sends them to Appier. Installed as a dependency of those SDKs; " \
                   "not meant to be used by apps directly."
  s.homepage     = "https://www.appier.com"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Appier" => "appier-ssp-dev@appier.com" }
  s.platform     = :ios, '12.0'
  # Plain semver tag (e.g. 1.0.0), the same tag SPM resolves against.
  s.source       = { :git => "https://github.com/appier/crash-reporter-ios.git", :tag => package['version'][1..-1] }
  s.ios.vendored_frameworks = 'AppierCrashReporter.xcframework'
  s.frameworks   = 'Foundation', 'UIKit'
  s.libraries    = 'compression', 'c++'
  s.requires_arc = true
  s.readme = 'https://github.com/appier/crash-reporter-ios/blob/main/README.md'
end
