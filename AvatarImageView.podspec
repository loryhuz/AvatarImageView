Pod::Spec.new do |s|
  s.name              = "AvatarImageView"
  s.version           = "2.0.3"
  s.summary           = "AvatarImageView is a simple and extensible UIImageView subclass to display users' avatars"
  s.author            = { "Ayush Newatia" => "ayush.newatia@icloud.com" }
  s.platform          = :ios, '8.0'
  s.homepage          = "https://github.com/ayushn21/AvatarImageView"
  s.source            = { :git => "https://github.com/ayushn21/AvatarImageView.git", :tag => s.version.to_s }
  s.social_media_url  = 'https://twitter.com/ayushn21'
  s.license           = 'MIT'
  s.requires_arc      = true

  s.default_subspec = 'Core'

  s.subspec 'Core' do |core|
    core.source_files = 'AvatarImageView/*.swift'
  end

  s.subspec 'AppExtension' do |ext|
    ext.source_files = 'AvatarImageView/*.swift'
    # For app extensions, disabling code paths using unavailable API
    ext.pod_target_xcconfig = { 'GCC_PREPROCESSOR_DEFINITIONS' => 'MYLIBRARY_APP_EXTENSIONS=1' }
  end
end
