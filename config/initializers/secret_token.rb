# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
BookApp::Application.config.secret_key_base = '2d30cec4540a02c23f5befbf7ca5278f083d6a5dd2b98b3f74148f00fdf3ea3e2248260701279efcc37dea0dcb79eda14194d47e05365f9883c9eb16e22267b7'
