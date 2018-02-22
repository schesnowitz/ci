CarrierWave.configure do |config|
  # config.fog_provider = 'fog'
  config.fog_credentials = {
    # Configuration for Amazon S3
    provider:               'AWS',
    aws_access_key_id:       Rails.application.credentials.aws_access_key_id,
    aws_secret_access_key: Rails.application.credentials.aws_secret_access_key,
    region:                 'us-east-2'
    }
  config.fog_directory     =  'chesnowitz'
end
