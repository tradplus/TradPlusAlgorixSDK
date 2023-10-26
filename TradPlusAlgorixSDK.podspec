
  Pod::Spec.new do |s|
  s.name             = 'TradPlusAlgorixSDK'
  s.version          = '5.0.1'
  s.summary          = 'TradPlusAlgorixSDK'
  s.description      = <<-DESC
      TradPlusAlgorixSDK,TradPlusAlgorixSDK,Algorix
                       DESC
  s.homepage         = 'https://github.com/tradplus/TradPlusAlgorixSDK'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'TradPlus' => 'ios' }
  s.source           = { :git => 'https://github.com/tradplus/TradPlusAlgorixSDK.git', :tag => s.version }
  
  s.ios.deployment_target = '11.0'
  
  s.pod_target_xcconfig =   {'OTHER_LDFLAGS' => ['-lObjC']}

  s.swift_version = '5.0'
  
  valid_archs = ['x86_64', 'arm64']

  s.default_subspec = 'XCPrebidMobile'

  s.subspec 'XCPrebidMobile' do |ss|
    ss.vendored_frameworks = ['Algorix/XCPrebidMobile.xcframework']
    ss.preserve_paths = 'Algorix/XCPrebidMobile.xcframework'
  end
end
