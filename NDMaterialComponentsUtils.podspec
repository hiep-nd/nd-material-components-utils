Pod::Spec.new do |s|
  s.name         = "NDMaterialComponentsUtils"
  s.version      = "0.0.2"
  s.summary      = "Utilities for MaterialComponents framework."
  s.description  = <<-DESC
  NDMaterialComponentsUtils is a small collection of utilities for MaterialComponents framework.
                   DESC
  s.homepage     = "https://github.com/hiep-nd/nd-material-components-utils.git"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Nguyen Duc Hiep" => "hiep.nd@gmail.com" }
  s.ios.deployment_target = '9.0'
#  s.tvos.deployment_target = '9.0'
  s.swift_versions = ['4.0', '5.1', '5.2']
  s.requires_arc   = true
  #s.source        = { :http => 'file:' + URI.escape(__dir__) + '/' }
  s.source       = { :git => "https://github.com/hiep-nd/nd-material-components-utils.git", :tag => "Pod-#{s.version}" }

  s.subspec "Core" do |ss|
    ss.source_files  = "Sources/Core/*.{h,m,mm,swift}"
    ss.framework = 'Foundation'
  end

  s.subspec "FlexibleHeader" do |ss|
    ss.source_files  = "Sources/FlexibleHeader/*.{h,m,mm,swift}"

    ss.framework = 'Foundation'

    ss.dependency 'MaterialComponents/FlexibleHeader'
    ss.dependency 'NDMaterialComponentsUtils/Core'
    ss.dependency 'NDLog', '~> 0.0.6'
    ss.dependency 'NDUtils/objc', '~> 0.0.5'

  end

  s.subspec 'ObjC' do |ss|
    ss.dependency 'NDMaterialComponentsUtils/Core'
    ss.dependency 'NDMaterialComponentsUtils/FlexibleHeader'
  end

  s.subspec 'Swift' do |ss|
    ss.dependency 'NDMaterialComponentsUtils/ObjC'
  end

  s.default_subspec = 'Swift'
end
