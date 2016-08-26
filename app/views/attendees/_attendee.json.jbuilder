json.extract! attendee, :id, :timeRegistration, :timePayment, :amountBilled, :amountPaid, :person_id, :event_id, :created_at, :updated_at
json.url attendee_url(attendee, format: :json)