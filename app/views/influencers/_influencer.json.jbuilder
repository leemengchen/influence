json.extract! influencer, :id, :firstName, :lastName, :email, :igUsername, :gender, :created_at, :updated_at
json.url influencer_url(influencer, format: :json)