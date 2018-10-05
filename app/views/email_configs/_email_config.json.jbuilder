json.extract! email_config, :id, :EmailConfigcode, :server, :port, :useremail, :passwordemail, :created_at, :updated_at
json.url email_config_url(email_config, format: :json)
