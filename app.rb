require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/tamagotchi")


get ('/') do
erb(:index)
end

get("/tamagotchi") do
  @name = params.fetch("name")
  @play = params.fetch("play").to_i
  @sleep = params.fetch("sleep").to_i
  @feed = params.fetch("feed").to_i
  @my_pet = Tamagotchi.new(@name)
  @my_pet.play(@play)
  @my_pet.sleep(@sleep)
  @my_pet.feed(@feed)
  @final_score = @my_pet.score()

  erb(:final_score)
end
