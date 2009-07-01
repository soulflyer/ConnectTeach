# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ConnectTeach_session',
  :secret      => 'ce70902fdd99aa621978a853c5eb3678fcd6d0700803729a30c631e12be199b69680ce8b45aa67fdfab90a84b0873c41c449d4914cd7008b64dcf6dba7f62475'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
