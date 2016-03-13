#
#  Be sure to run `pod spec lint YuriCodeScanner.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

- Pod::Spec.new do |s|
-   s.name             = "YuriCodeScanner"
-   s.version          = "1.0.0"
-   s.summary          = "iOS原生二维码扫描功能与创建二维码图片功能"
-   s.description      = <<-DESC
-                        It used on iOS, which implement by Objective-C.
-                        DESC
-   s.homepage         = "https://github.com/Yuri-Zhang/YuriScannerCodeView"
-   s.license          = 'MIT'
-   s.author           = { "张晓飞" => "tobe1016@163.com" }
-   s.source           = { :git => "https://github.com/Yuri-Zhang/YuriScannerCodeView.git", :tag => s.version.to_s }
-   # s.social_media_url = 'https://twitter.com/NAME'
-
-   s.platform     = :ios, '1.0'
-   # s.ios.deployment_target = '5.0'
-   # s.osx.deployment_target = '10.7'
-   s.requires_arc = true
-
-   s.source_files = 'WZMarqueeView/*'
-   # s.resources = 'Assets'
-
-   # s.ios.exclude_files = 'Classes/osx'
-   # s.osx.exclude_files = 'Classes/ios'
-   # s.public_header_files = 'Classes/**/*.h'
-   s.frameworks = 'Foundation', 'UIKit'
-
- end
