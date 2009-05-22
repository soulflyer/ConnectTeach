# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_connectteach_session',
  :secret      => '23253cd07830ab1f74c866c28e4a6c806eb13cde5362b15c21f3555487514a679c044e2db9fed3de00941d6823530578f79fd1101e84d7903223c7d8daeeefe9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
