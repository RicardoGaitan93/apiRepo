json.extract! report_type, :id, :ReportTypecode, :description, :isusernecessary, :created_at, :updated_at
json.url report_type_url(report_type, format: :json)
