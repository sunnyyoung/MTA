Pod::Spec.new do |s|
  s.name                  = 'MTA'
  s.version               = '2.1.2'
  s.summary               = 'An unofficial MTA SDK Cocoapods repository.'
  s.homepage              = 'http://mta.qq.com'
  s.authors               = { 'Sunnyyoung' => 'https://github.com/Sunnyyoung' }
  s.source                = { :git => 'https://github.com/Sunnyyoung/MTA.git', :tag => s.version }
  s.license               = { :type => 'None',
                              :text => <<-LICENSE
                              Copyright © 1998 - 2018 Tencent. All Rights Reserved.
                              LICENSE
                            }
  s.requires_arc          = true
  s.platform					    = :ios, '8.0'
  s.default_subspecs      = 'Core'

  s.subspec 'Core' do |ss|
    ss.source_files				  = 'SDK/*.h'
    ss.public_header_files  = 'SDK/*.h'
    ss.vendored_libraries		= 'SDK/*.a'
    ss.frameworks           = 'CoreTelephony', 'CFNetwork', 'Security', 'SystemConfiguration'
    ss.libraries            = 'z', 'sqlite3'
  end

  s.subspec 'AutoTrack' do |ss|
    ss.dependency             'MTA/Core'
    ss.source_files			  	= 'SDK/plugin/autotrack/*.h'
    ss.public_header_files  = 'SDK/plugin/autotrack/*.h'
    ss.vendored_libraries		= 'SDK/plugin/autotrack/*.a'
  end

  s.subspec 'IDFA' do |ss|
    ss.dependency             'MTA/Core'
    ss.vendored_libraries   = 'SDK/plugin/idfa/*.a'
    ss.frameworks           = 'AdSupport'
  end

  s.subspec 'InstallTracker' do |ss|
    ss.dependency             'MTA/Core'
    ss.source_files			  	= 'SDK/plugin/installtracker/*.h'
    ss.public_header_files  = 'SDK/plugin/installtracker/*.h'
    ss.vendored_libraries   = 'SDK/plugin/installtracker/*.a'
  end

  s.subspec 'Hybrid' do |ss|
    ss.dependency             'MTA/Core'
    ss.source_files				  = 'SDK/plugin/MTAHybrid/*.h'
    ss.public_header_files  = 'SDK/plugin/MTAHybrid/*.h'
    ss.vendored_libraries   = 'SDK/plugin/MTAHybrid/*.a'
  end

  s.subspec 'FBI' do |ss|
    ss.dependency             'MTA/Core'
    ss.source_files				  = 'SDK/plugin/fbi/*.h'
    ss.public_header_files  = 'SDK/plugin/fbi/*.h'
    ss.vendored_libraries   = 'SDK/plugin/fbi/*.a'
    ss.frameworks           = 'Contacts'
  end

  s.subspec 'MTALBS' do |ss|
    ss.dependency             'MTA/Core'
    ss.source_files				  = 'SDK/plugin/mtalbs/*.h'
    ss.public_header_files  = 'SDK/plugin/mtalbs/*.h'
    ss.vendored_libraries   = 'SDK/plugin/mtalbs/*.a'
    ss.frameworks           = 'CoreLocation'
  end
end
