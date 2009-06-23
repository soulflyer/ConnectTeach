# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ConnectTeach_session',
  :secret      => '18d7e761dc1abf687e659cb918f138fc78496378ec0a5a7b840b5507e1cc84d0d33ac883c381f6aae64b7184e301bbddba89a52196c346b8a264d728fd89f110'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
