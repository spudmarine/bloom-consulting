json.array!(@contacts) do |contact|
  json.extract! contact, :id, :address, :phone, :email
  json.url contact_url(contact, format: :json)
end
