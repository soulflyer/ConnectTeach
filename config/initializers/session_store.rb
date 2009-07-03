# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ConnectTeach_session',
  :secret      => '28e117d78018619f7e6331749ccbc86925f5fb68e44c7be958cb87e5fa3cd98fde1d81f421341fbf91982e162ca3741672085bb67b0060da7a130c3bdfe51414'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
