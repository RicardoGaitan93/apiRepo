json.extract! email_report, :id, :to, :cc, :title, :body, :type, :attachment, :created_at, :updated_at
json.url email_report_url(email_report, format: :json)
