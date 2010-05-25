# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_qna_session',
  :secret      => 'e716316ca74ff50266dc58b040c11ac7d11d07bbc966ea9c9ade8ca78c3120a723a6e1d79dcf1f7e51baf6a16e81e2154371d6bb3fc01447d1d0b90f34854aba'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
