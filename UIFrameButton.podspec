

Pod::Spec.new do |s|
s.name             = "UIFrameButton"
s.version          = "0.0.1"
s.summary          = "A layout button of UIFrameButton."
s.homepage         = "https://github.com/LiuShuoyu/UIFrameButton"
s.license          = 'MIT'
s.author           = {'liushuoyu' => '13281250969@163.com' }
s.source           = { :git => "https://github.com/LiuShuoyu/UIFrameButton.git", :commit => “adb96c1367e9088210626dc46f96d44387d271d9” }

s.platform     = :ios, '7.0'
s.requires_arc = true

s.source_files = 'Pod/Classes'

s.frameworks = 'UIKit'

end
