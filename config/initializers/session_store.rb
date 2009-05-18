# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_sc-rails_session',
  :secret      => 'b0b122688cf76e2dd2a277e0e4b9fc35d494c0e33f710a3a2928b7806ebb79c367c4edf8ddec299b4ef720a2312281fd023654ac7f5ee66e11f77e6084335a53'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
