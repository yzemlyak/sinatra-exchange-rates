require "sinatra"
require "sinatra/reloader"
require "http"

get("/") do
  @raw_response = HTTP.get("https://api.exchangerate.host/list?access_key=6069b11e44c9f01bfbd63f1f29366f15")

  @string_response = @raw_response.to_s
  @parsed_response = JSON.parse(@string_response)
  erb(:homepage)
end
