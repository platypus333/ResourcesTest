Pod::Spec.new do |s|

  s.name         = "ResourcesTest"
  s.version      = "0.0.1"
  s.summary      = "ResourcesTestSummary"
  s.description  = <<-DESC
	ResourcesTestDescription
                   DESC
  s.homepage     = "https://github.com/platypus333/ResourcesTest.git"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "platypus333" => "qtinghao@163.com" }
  s.platform     = :ios, "11.0"
  s.source       = { :git => "https://github.com/platypus333/ResourcesTest.git", :tag => "#{s.version}" }
  s.source_files  = "ARHuxing/**/*.swift"
  s.swift_version = "4.2"
  s.dependency "Alamofire"
  s.dependency "SnapKit"
  s.dependency "HandyJSON"
  s.dependency "Toast-Swift"
  s.dependency "Tiercel"
  s.dependency "SSZipArchive"
  s.resource = "ResourcesTest/ResourcesTest.bundle"

end