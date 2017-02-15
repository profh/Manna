json.extract! vote, :id, :deacon_id, :decision, :case_id, :created_at, :updated_at
json.url vote_url(vote, format: :json)