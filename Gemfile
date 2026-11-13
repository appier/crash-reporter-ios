source "https://rubygems.org"

# fastlane ~>2.222 requires bundler < 3.0.0; pin bundler to a 2.x so `bundle`
# doesn't grab a 3.x/4.x and fail version resolution.
gem "bundler", "~>2.5"
gem "fastlane", "~>2.222.0"
gem "slather", "~>2.7.2"
gem "cocoapods", "~>1.15.0"
# nokogiri 1.13.x ships no precompiled gem for current arm64-darwin / Ruby 3.2
# CI runners and fails to build from source there; use a modern line that has
# precompiled binaries for both arm64-darwin and x86_64-linux.
gem "nokogiri", "~>1.18"
