# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_connectteach_session',
  :secret      => '8f8e7f445a9d0bc01b336c072238e453295a2b52f52aaf86c1daee05a4c536906bfe1b2322c4feb9fe38aaca204987b17bdcfefb64e00fb4e6112197713638b1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
