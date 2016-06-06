Pod::Spec.new do |s|
s.name         = "CCNavTab"
s.version      = "1.0.2"
s.summary      = "A Easy Way To Construct A Frame for ios."
s.homepage     = "https://github.com/xiongcaichang/CCNavTab"
s.license      = "MIT"
s.author       = { "CC" => "15223245@qq.com" }
s.platform     = :ios, "5.0"
s.source       = { :git => "https://github.com/xiongcaichang/CCNavTab.git", :tag => "1.0.2" }
s.source_files  = "CCNavTab", "Lib/CCNavTab/**/*.{h,m}"
s.framework  = "UIKit"
end