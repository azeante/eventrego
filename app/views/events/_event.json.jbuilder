json.extract! event, :id, :dateOfEvent, :timeOfEvent, :venue, :price, :title, :maximumParticipants, :minimumParticipants, :participantsMustBring, :notes, :created_at, :updated_at
json.url event_url(event, format: :json)