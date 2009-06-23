# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_connectteach_session',
  :secret      => '5252d6671e3354f997250d3ce4616f096680e5acad64e7cd84e41876517fb2135e72da7f3e04e7dd0792192ec6721b09a102170e9a4cb6a80c6b6d0ae8881b8d'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
