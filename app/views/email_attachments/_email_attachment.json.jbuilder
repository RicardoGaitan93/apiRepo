json.extract! email_attachment, :id, :attachment, :created_at, :updated_at
json.url email_attachment_url(email_attachment, format: :json)
