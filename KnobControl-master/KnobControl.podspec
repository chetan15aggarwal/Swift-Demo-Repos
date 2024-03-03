
Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

s.name         = "KnobControl"
s.version      = "1.0.0"
s.summary      = "A knob control like the UISlider, but in a circular form."
s.description  = "The knob control is a completely customizable widget that can be used in any iOS app. It also plays a little victory fanfare."
s.homepage     = "http://raywenderlich.com"
s.license      = "MIT"
s.author             = { "" => "" }
s.platform     = :ios, "12.0"
#s.source       = { :path => '.' }
s.source       = { :git => "https://github.com/chetan15aggarwal/KnobControl.git", :tag => "1.0.0" }
s.source_files = "KnobControl"
s.swift_version = "4.2" 

end
