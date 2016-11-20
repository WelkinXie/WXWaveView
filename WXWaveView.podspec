#WXWaveView.podspec
Pod::Spec.new do |s|
  s.name         = "WXWaveView"
  s.version      = "1.0.0"
  s.summary      = "Add a pretty water wave to your view."
  s.homepage     = "https://github.com/WelkinXie/WXWaveView"
  s.license      = 'MIT'
  s.author       = { "Welkin Xie" => "welkin995@126.com" }
  s.platform     = :ios, "8.0"
  s.ios.deployment_target = "8.0"
  s.source       = { :git => "https://github.com/WelkinXie/WXWaveView.git", :tag => s.version}
  s.source_files  = 'WXWaveView-demo/WXWaveView/*.{h,m}'
  s.requires_arc = true
end