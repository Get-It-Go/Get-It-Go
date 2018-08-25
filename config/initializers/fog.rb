CarrierWave.configure do |config|
    if Rails.env.production?
        config.fog_provider = 'fog/aws'
        config.fog_credentials = {
            provider:             'AWS',
            aws_access_key_id:     ENV['PERSONAL_AWS_ACCESS_KEY_ID'],
            aws_secret_access_key: ENV['PERSONAL_AWS_SECRET_ACCESS_KEY'],
            region:                'ap-northeast-2',
            endpoint:              'https://s3-ap-northeast-2.amazonaws.com' # 아시아-한국서버
        }
        config.fog_directory  = ENV['PERSONAL_FOG_DIRECTORY']
    end
end
