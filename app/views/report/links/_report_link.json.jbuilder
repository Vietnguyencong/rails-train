json.extract! report_link, :id, :name_link, :status, :report_id, :created_at, :updated_at
json.url report_link_url(report_link, format: :json)
