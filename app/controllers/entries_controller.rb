class EntriesController < ApplicationController

  def new
    @place = Place.find_by({"id" => params["place_id"]})
  end

  def create
    @entry = Entry.new

    @entry["title"] = params["title"]
    @entry["occurred_on"] = params["occurred_on"]
    @entry["description"] = params["description"]
    
    # assign relationship between Entry and Place
    @entry["place_id"] = params["place_id"]
    @entry.save
    
    redirect_to "/places/#{@entry["place_id"]}"
  end

end
