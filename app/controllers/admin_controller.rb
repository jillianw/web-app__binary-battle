#Shows the form for adding a band or artist
MyApp.get "/add" do 
  @add_band = Band.all 
  erb :"add"
end

#Processes the form for adding a band or artist
MyApp.post "/added" do 
  x = Band.new
  x.name = params["name"]
  x.save

  erb :"added"
end

#Shows all bands/artists added
MyApp.get "/all_bands" do 
  @all_bands = Band.all 

  erb :"all_bands"
end

#Shows the scores for each artist
MyApp.get "/tally" do 
  @tally = Result.all

  erb :"tally"
end
