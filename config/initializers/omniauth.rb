OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
 provider :facebook, Rails.application.secrets['fb_id'],
 Rails.application.secrets['fb_secret'], scope: 'public_profile',
 info_fields: 'id,email,name,link'
end

# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :facebook, Rails.application.secrets['fb_id'],
#     Rails.application.secrets['fb_secret'], scope: "public_profile"
# end

# OmniAuth.config.logger = Rails.logger
#
# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :facebook, 'my facebook app id', 'my facebook app secret', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
# end
