json.array!(@ankete) do |anketa|
  json.extract! anketa, :id, :naslov, :opis
  json.url anketa_url(anketa, format: :json)
end
