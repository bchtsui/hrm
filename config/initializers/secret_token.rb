# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
#Hrm::Application.config.secret_key_base = 'ebe9b4bd8d8f1b691de7f4c0cbf03644592fc0a41cd498f0d33d9deeacdc28784021ad6422342c726b6ea149b8809da25e72b593e6b8ce3859375aaf7b951fd2'

require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

Hrm::Application.config.secret_key_base = secure_token