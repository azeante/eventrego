json.extract! volunteer, :id, :role, :person_id, :event_id, :created_at, :updated_at
json.url volunteer_url(volunteer, format: :json)