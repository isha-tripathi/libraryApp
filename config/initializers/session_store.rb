# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_libraryApp_session',
  :secret      => '9b16b0e9a93f685e2be836597e63e03a47a14fb5629e2f094d61f98bcd3d0fb5f5c43b19eee86e5d36efcbca6c31506b2356f84cfa19d7992c65bc2c5d055703'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
