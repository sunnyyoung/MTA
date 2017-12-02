Pod::Spec.new do |s|

  s.name                  = 'MTA'
  s.version               = '2.1.0'
  s.summary               = 'An unofficial MTA SDK Cocoapods repository.'
  s.homepage              = 'http://mta.qq.com'
  s.authors               = { 'Sunnyyoung' => 'https://github.com/Sunnyyoung' }
  s.source                = { :git => 'https://github.com/Sunnyyoung/MTA.git', :tag => s.version }
  s.license               = 'None'
  s.requires_arc          = true
  s.ios.deployment_target = '6.0'
  s.default_subspecs      = 'Core'

  s.subspec 'Core' do |ss|
    ss.source_files         = 'SDK/*.h'
    ss.public_header_files  = 'SDK/*.h'
    ss.vendored_library     = 'SDK/libmtasdk.a'
    ss.frameworks           = 'CoreTelephony', 'CFNetwork', 'Security', 'SystemConfiguration'
    ss.libraries            = 'z', 'sqlite3'
  end

  s.subspec 'AutoTrack' do |ss|
    ss.dependency         'MTA/Core'
    ss.vendored_library = 'SDK/libautotrack.a'
  end

  s.subspec 'IDFA' do |ss|
    ss.dependency         'MTA/Core'
    ss.vendored_library = 'SDK/libidfa.a'
    ss.frameworks       = 'AdSupport'
  end

  s.subspec 'InstallTracker' do |ss|
    ss.dependency         'MTA/Core'
    ss.vendored_library = 'SDK/libinstalltracker.a'
  end

  s.subspec 'Hybrid' do |ss|
    ss.dependency         'MTA/Core'
    ss.vendored_library = 'SDK/libmtahybrid.a'
  end
end
