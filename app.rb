require "bundler/setup"
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get "/" do
  erb(:index)
end

get "/bands" do
  @bands = Band.all
  erb(:bands)
end

post "/bands" do
  name = params.fetch("name")
  Band.create({name: name})
  @bands = Band.all
  @venues = Venue.all
  erb(:bands)
end

get "/bands/:id" do
  @band = Band.find(params.fetch("id").to_i)
  @venues = Venue.all
  erb(:band_info)
end

patch "/bands/:id" do
  @band = Band.find(params.fetch("id").to_i)
  venue_ids = params.fetch("venue_ids")
  @band.update({:venue_ids => venue_ids})
  @venues = Venue.all
  erb(:band_info)
end

delete "/bands/:id" do
  @band = Band.find(params.fetch("id").to_i)
  @band.destroy
  erb(:index)
end

get "/bands/:id/edit" do
  @band = Band.find(params.fetch("id").to_i)
  erb(:band_edit)
end

patch "/bands/:id/edit" do
  @band = Band.find(params.fetch("id").to_i)
  name = params.fetch("name")
  @band.update({name: name})
  @venues = Venue.all
  erb(:band_info)
end

get "/venues" do
  @venues = Venue.all
  erb(:venues)
end

post "/venues" do
  name = params.fetch("name")
  Venue.create({name: name})
  @bands = Band.all
  @venues = Venue.all
  erb(:venues)
end

get "/venues/:id" do
  @venue = Venue.find(params.fetch("id").to_i)
  @venues = Venue.all
  erb(:venue_info)
end

delete "/venues/:id" do
  @venue = Venue.find(params.fetch("id").to_i)
  @venue.destroy
  erb(:index)
end

get "/venues/:id/edit" do
  @venue = Venue.find(params.fetch("id").to_i)
  erb(:venue_edit)
end

patch "/venues/:id/edit" do
  @venue = Venue.find(params.fetch("id").to_i)
  name = params.fetch("name")
  @venue.update({name: name})
  erb(:venue_info)
end