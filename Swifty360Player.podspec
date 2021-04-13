Pod::Spec.new do |s|

    s.name                  = 'Swifty360Player'
    s.version               = '0.2.5'
    s.summary               = 'iOS 360-degree video player streaming from an AVPlayer.'
    s.homepage              = 'https://github.com/abdullahselek/Swifty360Player'
    s.license               = {
        :type => 'MIT',
        :file => 'LICENSE'
    }
    s.author                = {
        'Abdullah Selek' => 'abdullahselek@yahoo.com'
    }
    s.source                = {
        :git => 'https://github.com/abdullahselek/Swifty360Player.git',
        :tag => s.version.to_s
    }
    s.ios.deployment_target = '10.0'
    s.source_files          = 'Swifty360Player/*.swift'
    s.requires_arc          = true
    s.swift_versions        = ['5.0', '5.1', '5.2', '5.3']

end
