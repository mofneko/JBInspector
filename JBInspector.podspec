Pod::Spec.new do |s|
  s.name             = "JBInspector"
  s.version          = "1.0.0"
  s.summary          = "A simple jailbreak detection library"
  s.homepage         = "https://github.com/mofneko/JBInspector"
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.source           = { :git => "https://github.com/mofneko/JBInspector.git", :tag => s.version.to_s }
  s.source_files     = 'Sources/*.{h,m}'
  
  s.author           = { "Yusuke Arakawa" => "yusuke.a@nekolaboratory.com" }
  s.social_media_url = "https://twitter.com/mofmofneko"

  s.platform     = :ios, '5.0'
  s.ios.deployment_target = '5.0'
  s.requires_arc = true
end
