#
# Be sure to run `pod lib lint ConductorCaaS.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = "ConductorCaaS"
    s.version          = "0.0.1-SNAPSHOT"

    s.summary          = "CaaS - Conductor as a Service"
    s.description      = <<-DESC
                         GestÃ£o de pagamento eletrÃ´nicos como serviÃ§o
                         DESC

    s.platform     = :ios, '7.0'
    s.requires_arc = true

    s.framework    = 'SystemConfiguration'
    
    s.homepage     = "https://github.com/swagger-api/swagger-codegen"
    s.license      = "MIT"
    s.source       = { :git => "https://github.com/swagger-api/swagger-codegen.git", :tag => "#{s.version}" }
    s.author       = { "Thiago Sampaio" => "apiteam@swagger.io" }

    s.source_files = 'ConductorCaaS/**/*'
    s.public_header_files = 'ConductorCaaS/**/*.h'

    s.dependency 'AFNetworking', '~> 2.3'
    s.dependency 'JSONModel', '~> 1.1'
    s.dependency 'ISO8601', '~> 0.3'
end

