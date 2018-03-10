OmniAuth.config.logger = Rails.logger
# Rails.application.config.middleware.use OmniAuth::Builder do
#  provider :facebook, Rails.application.secrets['fb_id'],
#  Rails.application.secrets['fb_secret'], scope: 'public_profile',
#  info_fields: 'id,email,name,link'
# end
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '280897162404-96t8d63dv7vc83g61vt9eg45uhh9co81.apps.googleusercontent.com',
  'o6gGJ0eiP4DdavIKnRDu14yZ'#, {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
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
