json.extract! case_document, :id, :case_id, :document_id, :created_at, :updated_at
json.url case_document_url(case_document, format: :json)