json.extract! person, :id, :firstName, :lastName, :emailAddress, :telNo, :ifSubscribed, :gender, :created_at, :updated_at
json.url person_url(person, format: :json)