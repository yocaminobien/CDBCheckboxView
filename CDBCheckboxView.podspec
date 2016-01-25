#
# Be sure to run `pod lib lint CDBCheckboxView.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

@version = "0.0.1"

Pod::Spec.new do |s|
  s.name             = "CDBCheckboxView"
  s.version          = @version
  s.summary          = "Simple checkbox view"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
  Use it to maintain user checkboxing interaction inside a cell or a custom alert view"
                       DESC

  s.homepage         = "https://github.com/yocaminobien/CDBCheckboxView"
  s.license          = 'MIT'
  s.author           = { "yocaminobien" => "yocaminobien@gmail.com" }
  s.source           = { :git => "https://github.com/yocaminobien/CDBCheckboxView.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/yocaminobien

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'CDBCheckboxView' => ['Pod/Assets/*.png', 'Pod/Assets/*.xib']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
