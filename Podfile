platform :ios, '10.0'

def product_pods
    pod 'Swifty360Player', :path => '.'
    pod 'LookinServer', :configurations => ['Debug'] #视图调试
end

workspace 'Swifty360Player.xcworkspace'
project 'Sample/Sample.xcodeproj'

target 'Sample' do
    use_frameworks!
    inherit! :search_paths
    product_pods
end
