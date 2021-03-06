Pod::Spec.new do |s|
  s.name         = "FinAppletBLE"
  s.version      = "_FinAppletBLE_version_"
  s.summary      = "FinAppletBLE sdk."
  s.description  = <<-DESC
                    this is FinAppletBLE sdk.
                   DESC
  s.homepage     = "https://www.finclip.com"
  s.license      = {
    :type => 'Copyright',
    :text => <<-LICENSE
      Copyright 2017 finogeeks.com. All rights reserved.
      LICENSE
  }
  s.author             = { "finclip" => "contact@finogeeks.com" }
  s.platform     = :ios, "9.0"
  s.ios.deployment_target = "9.0"
  s.source       = { :http => "https://app.finogeeks.com/finchat/sdk/FinAppletBLE-_FinAppletBLE_version_.zip"  }
  s.vendored_frameworks = "FinAppletBLE.framework" 
  s.libraries = 'c++'
  s.dependency 'FinAppletExt','_FinAppletBLE_version_'
  s.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
